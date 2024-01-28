// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:testovoe/features/login/data/datasourse/local/reaml_datasource.dart'
    as _i5;
import 'package:testovoe/features/login/data/datasourse/remote/some_auth_datasource.dart'
    as _i4;
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart'
    as _i6;
import 'package:testovoe/features/login/presentation/state/auth_bloc/auth_bloc.dart'
    as _i7;
import 'package:testovoe/injection.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.FlutterSecureStorage>(() => injectionModule.prefs);
  gh.factory<_i4.IAuthDatasourse>(() => _i4.SomeAuthDatasourse());
  gh.singleton<_i5.IRealmDatasource>(
    _i5.RealmDatasource(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i6.ISomeAuthRepository>(_i6.SomeAuthRepository(
    gh<_i4.IAuthDatasourse>(),
    gh<_i5.IRealmDatasource>(),
  ));
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(gh<_i6.ISomeAuthRepository>()));
  return getIt;
}

class _$InjectionModule extends _i8.InjectionModule {}
