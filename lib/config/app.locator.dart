// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../data/remote/api_rep_impl.dart';
import '../data/repository/api_repository.dart';
import '../services/auth_service.dart';

final serviceLocator = StackedLocator.instance;

void setupServiceLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  serviceLocator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  serviceLocator.registerSingleton(NavigationService());
  serviceLocator.registerLazySingleton(() => AuthService());
  serviceLocator.registerLazySingleton<ApiRepository>(() => ApiRepImpl());
}
