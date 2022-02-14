import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/cines/cines_store.dart';
import 'package:em_cartaz/app/widgets/cards/card_cines.widget.dart';
import 'package:em_cartaz/app/widgets/cards/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CinesPage extends StatefulWidget {
  const CinesPage({
    Key? key,
  }) : super(key: key);
  @override
  CinesPageState createState() => CinesPageState();
}

class CinesPageState extends ModularState<CinesPage, CinesStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.movie_outlined,
                      color: AppColors.red,
                      size: 35,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Cinemas',
                      style: AppStyles.titlePages,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_list,
                    color: AppColors.red,
                    size: 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screen.height * .85,
              child: Observer(
                builder: (_) {
                  return controller.isLoading
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: const Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                              color: AppColors.red,
                            ),
                          ),
                        )
                      : ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: controller.list?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CardCineWidget(
                              infos: controller.list?[index],
                            );
                          },
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
