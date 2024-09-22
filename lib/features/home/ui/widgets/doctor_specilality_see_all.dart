import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecilalitySeeAll extends StatelessWidget {
  const DoctorSpecilalitySeeAll({super.key});

 @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}