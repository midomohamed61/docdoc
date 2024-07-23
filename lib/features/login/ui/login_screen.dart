import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlackBold,
            ),
            verticalSpace(8),
            Text(
              'Please login to your account',
              style: TextStyles.font14GrayRegular,
            ),
            verticalSpace(36),
            Form(
              key: _formKey,
              child:  Column(
                children: [
                  const AppTextFormField(
                    hintText: 'Email',
                  ),
                  verticalSpace(18),
                   AppTextFormField(
                    hintText: 'Password',
                    obscureText: isObscureText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                      icon: Icon(isObscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {}, textStyle: TextStyles.font16WhiteSemiBold,
                  ),
                  verticalSpace(40),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const DontHaveAccountText(),
                  ]
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
