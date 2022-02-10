// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:em_cartaz/app/core/app_images.dart';
import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    Future.delayed(
      const Duration(seconds: 4),
      () {
        controller.verifyCache();
      },
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomRight,
            colors: [
              AppColors.darkGradientFirst,
              AppColors.darkGradientSecond,
            ],
          ),
        ),
        child: Center(
          child: Lottie.asset(
            AppImages.loading,
            height: screen.height * .40,
            repeat: false,
          ),
        ),
      ),
    );
  }
}
