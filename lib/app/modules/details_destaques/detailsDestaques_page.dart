// ignore_for_file: prefer_const_constructors

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_store.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:em_cartaz/app/widgets/classific/classific_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    alignment: Alignment.bottomRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.network(
                          '${widget.destaquesModels?.event?.images?.last.url}',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: ClassificWidget(
                          event: widget.destaquesModels?.event,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.center,
                  child: Text(
                    '${widget.destaquesModels?.event?.synopsis}',
                    textAlign: TextAlign.justify,
                    style: AppStyles.textSynops,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Trailers',
                          style: AppStyles.buttonText,
                        ),
                      ),
                      Container(
                        height: screen.width * .65,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        alignment: Alignment.center,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount:
                              widget.destaquesModels?.event?.trailers?.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: AppColors.darkGradientFirst,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  GestureDetector(
                                    child: SizedBox(
                                      child: Image.network(
                                        '${widget.destaquesModels?.event?.images?.first.url}',
                                        fit: BoxFit.cover,
                                        color: Colors.white30.withOpacity(0.5),
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                    onTap: () {
                                      launch(
                                        '${widget.destaquesModels?.event?.trailers?[index].url}',
                                      );
                                    },
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: AppColors.red,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
