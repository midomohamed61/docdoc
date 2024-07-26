
import 'package:docdoc/core/helpers/extentions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatefulWidget {
  const LoginBlocListener({super.key});

  @override
  State<LoginBlocListener> createState() => _LoginBlocListenerState();
}

class _LoginBlocListenerState extends State<LoginBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current is Loading || current is Error || current is Success,
      listener: (context, state) {
         state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          error: (message) {
            Navigator.pop(context);
            showDialog(context: context, builder: (context) => AlertDialog(
              icon: const Icon(Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content:  Text( message,
                style: TextStyles.font15DarkBlueMedium,
              ),
              actions: [
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child:  Text('Ok',style: TextStyles.font14BlueSemiBold,))
              ],
            ));
          },
          success: (message) {
            Navigator.pop(context);
            context.pushNamed(Routes.homeScreen);
          },
         );
      },
      child: const SizedBox.shrink(),
    );
  }
}
