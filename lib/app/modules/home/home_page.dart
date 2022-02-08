// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/home/home_store.dart';
import 'package:em_cartaz/app/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGradientFirst,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.movie_creation_outlined,
                  color: AppColors.red,
                  size: 36,
                ),
                SizedBox(width: 20),
                Text(
                  'Em Cartaz',
                  style: AppStyles.buttonText,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.list,
                size: 36,
              ),
            ),
          ],
        ),
      ),
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
        child: SizedBox(
          height: screen.height,
          width: screen.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Filmes em Destaques',
                      style: AppStyles.buttonText,
                    ),
                    SizedBox(
                      height: screen.height * .40,
                      child: Observer(
                        builder: (_) {
                          return controller.isLoading
                              ? Container()
                              : ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: controller.listDestques?.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CardWidget(
                                        images: controller.listDestques?[index]
                                            .event?.images?.first,
                                        event: controller
                                            .listDestques?[index].event,
                                      ),
                                    );
                                  },
                                );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
