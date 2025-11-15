import 'package:drift/drift.dart';
import 'package:nexo/data/datasources/local/link_local_data_source.dart';
import 'package:nexo/domain/entities/link.dart' as domain;
import 'package:nexo/data/datasources/local/app_database.dart' as db;
import 'package:nexo/domain/repositories/link_repository.dart';

class LinkRepositoryImpl implements LinkRepository {
  final LinkLocalDataSource localDataSource;

  LinkRepositoryImpl({required this.localDataSource});

  @override
  Future<void> addLink(domain.Link link) async {
    final linkCompanion = db.LinksCompanion(
      position: Value(link.order),
      title: Value(link.title),
      url: Value(link.url),
    );
    await localDataSource.addLink(linkCompanion);
  }

  @override
  Future<void> deleteLink(int id) async {
    await localDataSource.deleteLink(id);
  }

  @override
  Future<List<domain.Link>> getLinks() async {
    final links = await localDataSource.getLinks();
    final domainLinks = links
        .map(
          (e) => domain.Link(
            id: e.id,
            title: e.title,
            url: e.url,
            order: e.position,
          ),
        )
        .toList();
    domainLinks.sort((a, b) => a.order.compareTo(b.order));
    return domainLinks;
  }

  @override
  Future<void> updateLink(domain.Link link) async {
    final linkCompanion = db.LinksCompanion(
      id: Value(link.id!),
      title: Value(link.title),
      url: Value(link.url),
      position: Value(link.order),
    );
    await localDataSource.updateLink(linkCompanion);
  }

  @override
  Future<void> updateLinkOrder(List<domain.Link> links) async {
    final linkCompanions = links
        .map(
          (link) => db.LinksCompanion(
            id: Value(link.id!),
            position: Value(link.order),
          ),
        )
        .toList();

    await localDataSource.updateLinksOrder(linkCompanions);
  }
}
