import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:flutter/material.dart';

class ClassificWidget extends StatelessWidget {
  const ClassificWidget({Key? key, this.event}) : super(key: key);

  final Event? event;

  @override
  Widget build(BuildContext context) {
    var colors = Colors.transparent;
    var title = "";

    switch (event?.contentRating) {
      case '12 anos':
        colors = Colors.yellowAccent.shade700;
        title = '12';
        break;
      case '10 anos':
        colors = Colors.blueAccent.shade700;
        title = '10';
        break;
      case '14 anos':
        colors = Colors.orangeAccent.shade700;
        title = '14';
        break;
      case '16 anos':
        colors = Colors.redAccent.shade700;
        title = '16';
        break;
      case '18 anos':
        colors = Colors.black;
        title = '18';
        break;
      case 'Livre':
        colors = Colors.greenAccent.shade700;
        title = 'L';
        break;

      default:
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
