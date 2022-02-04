// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/user_identification/user_identification_store.dart';
import 'package:em_cartaz/app/widgets/button_widget.dart';
import 'package:em_cartaz/app/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserIdentificationPage extends StatefulWidget {
  const UserIdentificationPage({
    Key? key,
  }) : super(key: key);
  @override
  UserIdentificationPageState createState() => UserIdentificationPageState();
}

class UserIdentificationPageState
    extends ModularState<UserIdentificationPage, UserIdentificationStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomRight,
            colors: const [
              AppColors.darkGradientFirst,
              AppColors.darkGradientSecond,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 100,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Para uma melhor experiência, vamos a uma configuração inicial!',
                      style: AppStyles.heading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        InputWidget(
                          title: 'Nome',
                          onChange: (value) => controller.user = value,
                        ),
                        SizedBox(height: 10),
                        InputWidget(
                          title: 'Sigla UF',
                          onChange: (value) => controller.uf = value,
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(
                            top: 5,
                            bottom: 20,
                          ),
                          height: 56,
                          child: ButtonWidget(
                            title: Text(
                              'Salvar',
                              style: AppStyles.buttonText,
                            ),
                            submit: () => controller.saveInformationInitial(
                              uf: controller.uf,
                              user: controller.user,
                              context: context,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
