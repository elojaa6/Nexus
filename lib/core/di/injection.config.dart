// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nexo/core/di/register_module.dart' as _i7;
import 'package:nexo/data/datasources/local/app_database.dart' as _i3;
import 'package:nexo/data/datasources/local/link_local_data_source.dart' as _i4;
import 'package:nexo/domain/repositories/link_repository.dart' as _i5;
import 'package:nexo/presentation/bloc/links/link_bloc.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppDatabase>(() => registerModule.appDatabase);
    gh.lazySingleton<_i4.LinkLocalDataSource>(
        () => registerModule.linkLocalDataSource(gh<_i3.AppDatabase>()));
    gh.lazySingleton<_i5.LinkRepository>(
        () => registerModule.linkRepository(gh<_i4.LinkLocalDataSource>()));
    gh.factory<_i6.LinkBloc>(() => _i6.LinkBloc(gh<_i5.LinkRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i7.RegisterModule {}
