import 'package:nexo/data/datasources/local/app_database.dart';
import 'package:nexo/data/datasources/local/link_local_data_source.dart';

class LinkLocalDataSourceImpl implements LinkLocalDataSource {
  final AppDatabase appDatabase;

  LinkLocalDataSourceImpl({required this.appDatabase});

  @override
  Future<void> addLink(LinksCompanion link) async {
    await appDatabase.into(appDatabase.links).insert(link);
  }

  @override
  Future<void> deleteLink(int id) async {
    await (appDatabase.delete(appDatabase.links)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<Link>> getLinks() async {
    final query = appDatabase.select(appDatabase.links);
    return await query.get();
  }

  @override
  Future<void> updateLink(LinksCompanion link) async {
    await (appDatabase.update(appDatabase.links)..where((tbl) => tbl.id.equals(link.id.value))).write(link);
  }

  @override
  Future<void> updateLinksOrder(List<LinksCompanion> links) async {
    await appDatabase.batch((batch) {
      for (final link in links) {
        batch.update(
          appDatabase.links,
          link,
          where: (tbl) => tbl.id.equals(link.id.value),
        );
      }
    });
  }
}
