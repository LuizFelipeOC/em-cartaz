// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/home/home_store.dart';
import 'package:em_cartaz/app/modules/home/models/cartaz_models.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:em_cartaz/app/widgets/cards/card_cartaz_widget.dart';
import 'package:em_cartaz/app/widgets/cards/card_soon_widget.dart';
import 'package:em_cartaz/app/widgets/cards/card_widget.dart';
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
      backgroundColor: AppColors.darkGradientFirst,
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: screen.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Em Destaques',
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
                                        child: GestureDetector(
                                          child: CardWidget(
                                            images: controller
                                                .listDestques?[index]
                                                .event
                                                ?.images
                                                ?.first,
                                            event: controller
                                                .listDestques?[index].event,
                                          ),
                                          onTap: () => Modular.to.pushNamed(
                                            '/home/details/destaques/',
                                            arguments: DestaquesModels(
                                              event: controller
                                                  .listDestques?[index].event,
                                              showtimes: controller
                                                  .listDestques?[index]
                                                  .showtimes,
                                            ),
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
                    left: 30,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          child: CardCartazWidget(
                                            images: controller
                                                .listCartaz?[index]
                                                .images
                                                ?.first,
                                            event:
                                                controller.listCartaz?[index],
                                          ),
                                          onTap: () => Modular.to.pushNamed(
                                            '/home/details/cartaz/',
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
                    left: 30,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          child: CardSoonWidget(
                                            images: controller
                                                .listSoon?[index].images?.first,
                                            event: controller.listSoon?[index],
                                          ),
                                          onTap: () => Modular.to.pushNamed(
                                            '/home/details/embreve/',
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
          ),
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          backgroundColor: AppColors.darkGradientSecond,
          elevation: 10,
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
      }),
    );
  }
}
