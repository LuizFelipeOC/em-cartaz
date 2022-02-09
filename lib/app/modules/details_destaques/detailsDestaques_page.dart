// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_store.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class DetailsDestaquesPage extends StatefulWidget {
  final DestaquesModels? destaquesModels;

  const DetailsDestaquesPage({
    Key? key,
    @required this.destaquesModels,
  }) : super(key: key);

  @override
  DetailsDestaquesPageState createState() => DetailsDestaquesPageState();
}

class DetailsDestaquesPageState
    extends ModularState<DetailsDestaquesPage, DetailsDestaquesStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkGradientFirst,
        elevation: 0,
        title: Text('${widget.destaquesModels?.event?.title}'),
        leading: IconButton(
          onPressed: () => controller.returnPage(),
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Image.network(
                        '${widget.destaquesModels?.event?.images?.last.url}',
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.center,
                  child: Text(
                    '${widget.destaquesModels?.event?.synopsis}',
                    style: AppStyles.textSynops,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
