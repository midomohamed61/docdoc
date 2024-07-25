import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValiditions extends StatelessWidget {
  const PasswordValiditions({super.key, required this.hasLowerCase, required this.hasUpperCase, required this.hasNumber, required this.hasSpecialCharacter, required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationText('at least 1 lowerCase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationText('at least 1 UpperCase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationText('at least 1 SpecialCharacter letter', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationText('at least 1 Number letter', hasNumber),
        verticalSpace(2),
        buildValidationText('at least 8 lowerCase letter', hasMinLength),
        
      ]
    );
  }
  
  Widget buildValidationText(String s, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 2.5,
          ),
          horizontalSpace(6),
          Text(s,style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),),
          
      ]
    );
  }
}