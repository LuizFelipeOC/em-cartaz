// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/home/home_store.dart';
import 'package:em_cartaz/app/widgets/cards/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return SizedBox(
      width: screen.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_outlined,
                      size: 30,
                      color: AppColors.red,
                    ),
                    Text(
                      'Em Cartaz',
                      style: AppStyles.buttonText,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Text(
                  'Em Destaques',
                  style: AppStyles.buttonText,
                ),
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
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  child: CardWidget(
                                    images: controller.listDestques?[index]
                                        .event?.images?.first,
                                    event:
                                        controller.listDestques?[index].event,
                                  ),
                                  onTap: () => Modular.to.pushNamed(
                                    '/home/details/',
                                    arguments: [
                                      controller.listDestques?[index].event,
                                      controller.listDestques?[index].showtimes
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Em Cartaz',
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
                              itemCount: controller.listCartaz?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    child: CardWidget(
                                      images: controller
                                          .listCartaz?[index].images?.first,
                                      event: controller.listCartaz?[index],
                                    ),
                                    onTap: () => Modular.to.pushNamed(
                                      '/home/details/',
                                      arguments: [
                                        controller.listCartaz?[index],
                                        null
                                      ],
                                    ),
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
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Em breve',
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
                              itemCount: controller.listSoon?.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    child: CardWidget(
                                      images: controller
                                          .listSoon?[index].images?.first,
                                      event: controller.listSoon?[index],
                                    ),
                                    onTap: () => Modular.to.pushNamed(
                                      '/home/details/',
                                      arguments: [
                                        controller.listSoon?[index],
                                        null
                                      ],
                                    ),
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
    );
  }
}
