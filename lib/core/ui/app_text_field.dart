import 'package:eng_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;

  const AppTextField({
    this.hintText,
    super.key,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: AppColors.textBlack),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
      ),
      validator: validator,
      controller: controller,
    );
  }
}
