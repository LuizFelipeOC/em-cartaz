// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    Key? key,
    this.title,
    this.onChange,
    this.inputAction,
    this.error,
  }) : super(key: key);

  final String? title;
  final Function(String? value)? onChange;
  final TextInputAction? inputAction;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.heading,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGradientSecond),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGradientSecond),
          ),
          labelText: title,
          labelStyle: AppStyles.heading,
          errorText: error),
      cursorColor: AppColors.darkGradientSecond,
      onChanged: onChange,
      textInputAction: inputAction ?? TextInputAction.unspecified,
    );
  }
}
