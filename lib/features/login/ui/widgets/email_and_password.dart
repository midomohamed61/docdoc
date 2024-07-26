import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/password_validitions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  // final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = RegExp(r'[a-z]').hasMatch(passwordController.text);
        hasUpperCase = RegExp(r'[A-Z]').hasMatch(passwordController.text);
        hasNumber = RegExp(r'[0-9]').hasMatch(passwordController.text);
        hasSpecialCharacter = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(passwordController.text);
        hasMinLength = passwordController.text.length >= 8;
      });
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(children: [
        AppTextFormField(
          controller: context.read<LoginCubit>().emailController,
          validator: (value) {
            if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
              return 'Please enter your email';
            }
            return null;
          },
          hintText: 'Email', isObscureText: isObscureText,
        ),
        verticalSpace(18),
        AppTextFormField(
          isObscureText: isObscureText,
          controller: context.read<LoginCubit>().passwordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
          hintText: 'Password',
          obscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(isObscureText ? Icons.visibility : Icons.visibility_off),
          ),
        ),
        verticalSpace(24),
         PasswordValiditions(
          hasLowerCase: hasLowerCase,
          hasUpperCase: hasUpperCase,
          hasNumber: hasNumber,
          hasSpecialCharacter: hasSpecialCharacter,
          hasMinLength: hasMinLength,
        ),
      ]),
    );
  }
   @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
