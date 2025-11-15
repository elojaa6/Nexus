import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nexo/domain/repositories/link_repository.dart';
import 'package:nexo/domain/usecases/update_links_order.dart';
import 'package:nexo/presentation/bloc/links/link_event.dart';
import 'package:nexo/presentation/bloc/links/link_state.dart';
import 'package:nexo/domain/entities/link.dart';

@injectable
class LinkBloc extends Bloc<LinkEvent, LinkState> {
  final LinkRepository _linkRepository;
  final UpdateLinksOrder _updateLinksOrder;

  LinkBloc(this._linkRepository, this._updateLinksOrder)
    : super(const LinkState.initial()) {
    on<LinkEvent>((event, emit) async {
      await event.when(
        loadLinks: () async {
          emit(const LinkState.loading());
          try {
            final links = await _linkRepository.getLinks();
            emit(LinkState.loaded(links: links));
          } catch (e) {
            emit(LinkState.error(message: e.toString()));
          }
        },
        addLink: (title, url) async {
          try {
            final currentLinks = state.maybeWhen(
              loaded: (links) => links,
              orElse: () => <Link>[],
            );
            final newOrder = currentLinks.length;

            final newLink = Link(title: title, url: url, order: newOrder);
            await _linkRepository.addLink(newLink);
            add(const LinkEvent.loadLinks());
          } catch (e) {
            emit(LinkState.error(message: e.toString()));
          }
        },
        updateLink: (link) async {
          try {
            await _linkRepository.updateLink(link);
            add(const LinkEvent.loadLinks());
          } catch (e) {
            emit(LinkState.error(message: e.toString()));
          }
        },
        deleteLink: (id) async {
          try {
            await _linkRepository.deleteLink(id);
            add(const LinkEvent.loadLinks());
          } catch (e) {
            emit(LinkState.error(message: e.toString()));
          }
        },
        reorderLinks: (links) async {
          try {
            emit(LinkState.loaded(links: links));
            await _updateLinksOrder(links);
          } catch (e) {
            emit(LinkState.error(message: e.toString()));
          }
        },
      );
    });
  }
}
