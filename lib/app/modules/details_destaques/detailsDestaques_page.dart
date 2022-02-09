// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_store.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:em_cartaz/app/widgets/classific/classific_widget.dart';
import 'package:flutter/services.dart';
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

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
      ),
    );

    controller
        .getDuration(int.parse(widget.destaquesModels?.event?.duration ?? "0"));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screen.height * .30),
        child: SizedBox(
          child: Stack(
            children: [
              SizedBox(
                height: screen.height * .30,
                child: Image.network(
                  '${widget.destaquesModels?.event?.images?.last.url}',
                  width: screen.height * 90,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: screen.height * .30,
                child: Container(
                  margin: EdgeInsets.only(top: 45, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            left: 1.0,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.darkGradientFirst,
                            ),
                          ),
                          IconButton(
                            constraints: BoxConstraints(),
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            icon: Icon(Icons.arrow_back_ios_new),
                            color: Colors.white,
                            onPressed: () => controller.returnPage(),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${widget.destaquesModels?.event?.title}',
                          style: AppStyles.textAppBarHeading,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    width: screen.width * .95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.destaquesModels?.event?.rating == "0.0"
                            ? Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent.shade200,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.destaquesModels?.event?.rating
                                                .toString() ==
                                            "0.0"
                                        ? "-"
                                        : widget.destaquesModels?.event?.rating,
                                    style: AppStyles.textAppBarHeading,
                                  ),
                                ],
                              )
                            : Container(),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: Colors.grey.shade200,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '${controller.getDuration(int.parse(
                                widget.destaquesModels?.event?.duration ?? '0',
                              ))}',
                              style: AppStyles.textAppBarHeading,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: screen.height,
        width: screen.width,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sinopse',
                      style: AppStyles.buttonText,
                    ),
                    Text(
                      '${widget.destaquesModels?.event?.synopsis?.trim()}',
                      style: AppStyles.textSynops,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Outras Informações',
                      style: AppStyles.buttonText,
                    ),
                    Text(
                      'Diretor: ${widget.destaquesModels?.event?.director}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Distribuição: ${widget.destaquesModels?.event?.distributor}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Geneto: ${widget.destaquesModels?.event?.genres}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Classificação: ${widget.destaquesModels?.event?.contentRating}',
                      style: AppStyles.text,
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Trailers',
                      style: AppStyles.buttonText,
                    ),
                  ),
                  Container(
                    height: screen.height * .20,
                    width: screen.width,
                    margin: EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          widget.destaquesModels?.event?.trailers?.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 200,
                                child: Image.network(
                                  '${widget.destaquesModels?.event?.images?.first.url}',
                                  color: AppColors.darkGradientSecond
                                      .withOpacity(0.7),
                                  fit: BoxFit.cover,
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_arrow_outlined,
                                  color: AppColors.red,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
