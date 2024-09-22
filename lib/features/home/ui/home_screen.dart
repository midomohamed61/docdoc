import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc/features/home/logic/cubit/home_state.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_specilality_see_all.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_sprcilatity_list_view.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:docdoc/features/home/ui/widgets/doctors_list_View.dart';
import 'package:docdoc/features/home/ui/widgets/home_top_bar.dart';
import 'package:docdoc/features/home/ui/widgets/setup_specialization_and_doctor_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTopBar(),
                const DoctorsBlueContainer(),
                verticalSpace(24.h),
                const DoctorSpecilalitySeeAll(),
                verticalSpace(18),
                const SetupSpecializationAndDoctorBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
