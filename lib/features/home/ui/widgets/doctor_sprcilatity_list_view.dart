import 'package:docdoc/features/home/data/models/specializations_response_model.dart';
import 'package:docdoc/features/home/ui/widgets/doctor_specilaity_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSprcilatityListViwe extends StatelessWidget {
  final List<SpecializationsData>? specializationsData;
  const DoctorSprcilatityListViwe({super.key,required this.specializationsData, List<SpecializationsData?>? specializations});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsData!.length,
        itemBuilder: (context, index) {
          return DoctorSpecilaityListViewItems(
            specializationsData: specializationsData![index],
            itemindex: index,
          );
        },
      ),
    );
  }
}
