import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/signup/data/repos/sign_up_repo.dart';
import 'package:docdoc/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio =  DioFactory.getDio();
  // Dio & ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  //IN CUBIT should be registerFactory
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // Signup
   getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt<ApiService>()));
     //IN CUBIT should be registerFactory
   getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<SignupRepo>()));
}
