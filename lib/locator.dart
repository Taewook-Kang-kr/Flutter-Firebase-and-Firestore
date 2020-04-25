import 'package:get_it/get_it.dart';
import 'package:questor/services/authentication_service.dart';
import 'package:questor/services/dialog_service.dart';
import 'package:questor/services/firestore_service.dart';
import 'package:questor/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => FirestoreService());
}