import 'package:nexo/data/datasources/local/app_database.dart';

abstract class LinkLocalDataSource {
  Future<List<Link>> getLinks();
  Future<void> addLink(LinksCompanion link);
  Future<void> updateLink(LinksCompanion link);
  Future<void> deleteLink(int id);
}
