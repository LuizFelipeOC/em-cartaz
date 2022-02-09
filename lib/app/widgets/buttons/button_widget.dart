// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.title,
    this.submit,
  }) : super(key: key);

  final Widget? title;
  final Function()? submit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: const [
            AppColors.darkGradientFirst,
            AppColors.darkGradientSecond,
          ],
        ),
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        child: title,
        onPressed: submit,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
