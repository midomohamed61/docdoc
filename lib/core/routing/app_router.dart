import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/login_screen.dart';
import 'package:docdoc/features/onboarding/onboarding_screen.dart';
import 'package:docdoc/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:docdoc/features/signup/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
