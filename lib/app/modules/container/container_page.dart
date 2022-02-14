// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/container/container_store.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ContainerPage extends StatefulWidget {
  final String title;
  const ContainerPage({Key? key, this.title = 'ContainerPage'})
      : super(key: key);
  @override
  ContainerPageState createState() => ContainerPageState();
}

class ContainerPageState extends ModularState<ContainerPage, ContainerStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.darkGradientFirst,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              colors: const [
                AppColors.darkGradientFirst,
                AppColors.darkGradientSecond,
              ],
            ),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Observer(
                  builder: (_) {
                    return Container(
                      child: controller.listasPage[controller.index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return Container(
          height: screen.height * .07,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.centerLeft,
              begin: Alignment.centerRight,
              colors: const [
                AppColors.darkGradientFirst,
                AppColors.darkGradientSecond,
              ],
            ),
          ),
          child: BottomNavigationBar(
            onTap: (index) => controller.bottomBarController(index),
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.index,
            iconSize: 20,
            unselectedLabelStyle: AppStyles.text,
            selectedLabelStyle: AppStyles.text,
            selectedItemColor: AppColors.red,
            unselectedItemColor: AppColors.white,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business_outlined,
                ),
                label: 'Cinemas',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star_border_purple500),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.engineering),
                label: 'Config',
              ),
            ],
          ),
        );
      }),
    );
  }
}
