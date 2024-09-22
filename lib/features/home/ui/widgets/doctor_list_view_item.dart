import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListViewItems extends StatelessWidget {
  final Doctors doctorsModel;
  const DoctorListViewItems({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    width: 110.w,
                    height: 120.h,
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fposterwa.com%2Fproducts%2Feren-yeager&psig=AOvVaw0bM10Fcvo56YhlA7ZHogTq&ust=1727111478116000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMDD3uSF14gDFQAAAAAdAAAAABAR',
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorsModel.name ?? 'Eren Yeager',
                        style: TextStyles.font18DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        '${doctorsModel.degree} | ${doctorsModel.phone}',
                        style: TextStyles.font12GrayMedium,
                      ),
                      verticalSpace(5),
                      Text(
                        doctorsModel.email ?? 'General specialist',
                        style: TextStyles.font12GrayMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}