import 'package:injectable/injectable.dart';
import 'package:nexo/domain/entities/link.dart';
import 'package:nexo/domain/repositories/link_repository.dart';

@injectable
class UpdateLinksOrder {
  final LinkRepository repository;

  UpdateLinksOrder(this.repository);

  Future<void> call(List<Link> links) async {
    // Asignar el nuevo orden basado en el índice de la lista
    final List<Link> updatedLinks = [];
    for (int i = 0; i < links.length; i++) {
      updatedLinks.add(links[i].copyWith(order: i));
    }

    await repository.updateLinkOrder(updatedLinks);
  }
}
