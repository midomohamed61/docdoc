import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:docdoc/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:docdoc/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
            child:  Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h,),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text('Best Doctor in Town',style: TextStyles.font13DarkBlueRegular,textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 30.h,),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}