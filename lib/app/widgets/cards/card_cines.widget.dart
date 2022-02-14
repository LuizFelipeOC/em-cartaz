import 'package:cached_network_image/cached_network_image.dart';
import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/cines/models/cines_models.dart';
import 'package:flutter/material.dart';

class CardCineWidget extends StatelessWidget {
  const CardCineWidget({
    Key? key,
    this.infos,
  }) : super(key: key);

  final CineModels? infos;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: AppColors.darkGradientSecond.withOpacity(0.1),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${infos?.name}',
                  style: AppStyles.buttonText,
                ),
                Text(
                  '${infos?.address}',
                  style: AppStyles.text,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
