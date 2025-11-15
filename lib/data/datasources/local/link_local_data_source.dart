import 'package:nexo/data/datasources/local/app_database.dart';

abstract class LinkLocalDataSource {
  Future<List<Link>> getLinks();
  Future<void> addLink(LinksCompanion link);
  Future<void> updateLink(LinksCompanion link);
  Future<void> updateLinksOrder(List<LinksCompanion> links);
  Future<void> deleteLink(int id);
}
