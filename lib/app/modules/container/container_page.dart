// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:em_cartaz/app/modules/container/container_store.dart';
import 'package:flutter/material.dart';

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
            child: Container(
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
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return BottomNavigationBar(
            backgroundColor: AppColors.darkGradientSecond,
            selectedItemColor: AppColors.white,
            currentIndex: controller.index,
            selectedLabelStyle: AppStyles.textAppbar,
            unselectedLabelStyle: AppStyles.textAppbar,
            onTap: (value) => controller.bottomBarController(value),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                label: 'Shoppings',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configuração',
              ),
            ],
          );
        },
      ),
    );
  }
}
