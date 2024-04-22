// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat_x/config/network/api_client.dart' as _i18;
import 'package:chat_x/config/network/app_version.dart' as _i16;
import 'package:chat_x/config/network/local_storage.dart' as _i17;
import 'package:chat_x/config/network/network.dart' as _i19;
import 'package:chat_x/config/network/response_exception.dart' as _i13;
import 'package:chat_x/features/authentication/data/datasource/auth_remote_datasource.dart'
    as _i22;
import 'package:chat_x/features/authentication/data/repository/auth_repository_impl.dart'
    as _i28;
import 'package:chat_x/features/authentication/domain/repository/auth_repository.dart'
    as _i27;
import 'package:chat_x/features/authentication/domain/usecase/create_user_case.dart'
    as _i32;
import 'package:chat_x/features/authentication/presentation/cubit/login_cubit.dart'
    as _i6;
import 'package:chat_x/features/favorite/presentation/cubit/favorite_cubit.dart'
    as _i9;
import 'package:chat_x/features/favorite/presentation/page/favorite_page.dart'
    as _i14;
import 'package:chat_x/features/home/data/datasource/home_remote_datasource.dart'
    as _i21;
import 'package:chat_x/features/home/data/repository/home_repository_impl.dart'
    as _i24;
import 'package:chat_x/features/home/domain/repository/home_repository.dart'
    as _i23;
import 'package:chat_x/features/home/domain/usecase/all_user_case.dart' as _i25;
import 'package:chat_x/features/home/domain/usecase/user_detail_case.dart'
    as _i26;
import 'package:chat_x/features/home/presentation/cubit/detail_user_cubit.dart'
    as _i8;
import 'package:chat_x/features/home/presentation/cubit/home_cubit.dart' as _i4;
import 'package:chat_x/features/onboarding/presentation/cubit/init_cubit.dart'
    as _i7;
import 'package:chat_x/features/posting/data/datasource/posting_remote_datasource.dart'
    as _i20;
import 'package:chat_x/features/posting/data/repository/posting_repository_impl.dart'
    as _i30;
import 'package:chat_x/features/posting/domain/repository/posting_repository.dart'
    as _i29;
import 'package:chat_x/features/posting/domain/usecase/all_posting_case.dart'
    as _i31;
import 'package:chat_x/features/posting/presentation/cubit/posting_cubit.dart'
    as _i10;
import 'package:chat_x/features/root/presentation/cubit/bottomnav_cubit.dart'
    as _i5;
import 'package:dio/dio.dart' as _i11;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final packageInfoModul = _$PackageInfoModul();
    final dioModule = _$DioModule();
    final flutterSecureStorageModul = _$FlutterSecureStorageModul();
    await gh.factoryAsync<_i3.PackageInfo>(
      () => packageInfoModul.instance,
      preResolve: true,
    );
    gh.factory<_i4.HomeCubit>(() => _i4.HomeCubit());
    gh.factory<_i5.BottomnavCubit>(() => _i5.BottomnavCubit());
    gh.factory<_i6.LoginCubit>(() => _i6.LoginCubit());
    gh.factory<_i7.InitCubit>(() => _i7.InitCubit());
    gh.factory<_i8.DetailUserCubit>(() => _i8.DetailUserCubit());
    gh.factory<_i9.FavoriteCubit>(() => _i9.FavoriteCubit());
    gh.factory<_i10.PostingCubit>(() => _i10.PostingCubit());
    gh.singleton<_i11.Dio>(() => dioModule.instance);
    gh.singleton<_i12.FlutterSecureStorage>(
        () => flutterSecureStorageModul.instance);
    gh.lazySingleton<_i13.ResponseException>(() => _i13.ResponseException());
    gh.factory<_i14.FavoritePage>(() => _i14.FavoritePage(key: gh<_i15.Key>()));
    gh.lazySingleton<_i16.AppVersion>(
        () => _i16.AppVersion(gh<_i3.PackageInfo>()));
    gh.singleton<_i17.LocalStorage>(
        () => _i17.LocalStorage(gh<_i12.FlutterSecureStorage>()));
    gh.lazySingleton<_i18.ApiClient>(() => _i18.ApiClentImpl(
          gh<_i11.Dio>(),
          gh<_i19.AppVersion>(),
        ));
    gh.lazySingleton<_i20.PostingRemoteDataSource>(
        () => _i20.PostingRemoteDataSourceImpl(gh<_i19.ApiClient>()));
    gh.lazySingleton<_i21.HomeRemoteDataSource>(
        () => _i21.HomeRemoteDataSourceImpl(gh<_i19.ApiClient>()));
    gh.lazySingleton<_i22.AuthRemoteDataSource>(
        () => _i22.AuthRemoteDataSourceImpl(gh<_i19.ApiClient>()));
    gh.lazySingleton<_i23.HomeRepository>(() => _i24.HomeRepositoryImpl(
          gh<_i21.HomeRemoteDataSource>(),
          gh<_i13.ResponseException>(),
        ));
    gh.lazySingleton<_i25.AllUserCase>(
        () => _i25.AllUserCase(gh<_i23.HomeRepository>()));
    gh.lazySingleton<_i26.UserDetailCase>(
        () => _i26.UserDetailCase(gh<_i23.HomeRepository>()));
    gh.lazySingleton<_i27.AuthRepository>(() => _i28.AuthRepositoryImpl(
          gh<_i22.AuthRemoteDataSource>(),
          gh<_i13.ResponseException>(),
        ));
    gh.lazySingleton<_i29.PostingRepository>(() => _i30.PostingRepositoryImpl(
          gh<_i20.PostingRemoteDataSource>(),
          gh<_i13.ResponseException>(),
        ));
    gh.lazySingleton<_i31.AllPostingCase>(
        () => _i31.AllPostingCase(gh<_i29.PostingRepository>()));
    gh.lazySingleton<_i32.CreateUserCase>(
        () => _i32.CreateUserCase(gh<_i27.AuthRepository>()));
    return this;
  }
}

class _$PackageInfoModul extends _i16.PackageInfoModul {}

class _$DioModule extends _i18.DioModule {}

class _$FlutterSecureStorageModul extends _i17.FlutterSecureStorageModul {}
