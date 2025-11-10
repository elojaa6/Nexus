import 'package:nexo/domain/entities/link.dart';

abstract class LinkRepository {
  Future<List<Link>> getLinks();
  Future<void> addLink(Link link);
  Future<void> updateLink(Link link);
  Future<void> deleteLink(int id);
}
