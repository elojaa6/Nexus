import 'package:injectable/injectable.dart';
import 'package:nexo/data/datasources/local/app_database.dart';
import 'package:nexo/data/datasources/local/link_local_data_source.dart';
import 'package:nexo/data/datasources/local/link_local_data_source_impl.dart';
import 'package:nexo/data/repositories/link_repository_impl.dart';
import 'package:nexo/domain/repositories/link_repository.dart';

@module
abstract class RegisterModule {
  @singleton
  AppDatabase get appDatabase => AppDatabase();

  @lazySingleton
  LinkLocalDataSource linkLocalDataSource(AppDatabase appDatabase) =>
      LinkLocalDataSourceImpl(appDatabase: appDatabase);

  @lazySingleton
  LinkRepository linkRepository(LinkLocalDataSource localDataSource) =>
      LinkRepositoryImpl(localDataSource: localDataSource);
}
