// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_is_empty

import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:em_cartaz/app/core/themes/app_styles.dart';
import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_store.dart';
import 'package:em_cartaz/app/modules/home/models/cartaz_models.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class DetailsDestaquesPage extends StatefulWidget {
  final MovieCartaz? destaquesModels;
  final List<Showtimes>? showTimes;

  const DetailsDestaquesPage({
    Key? key,
    @required this.destaquesModels,
    this.showTimes,
  }) : super(key: key);

  @override
  DetailsDestaquesPageState createState() => DetailsDestaquesPageState();
}

class DetailsDestaquesPageState
    extends ModularState<DetailsDestaquesPage, DetailsDestaquesStore> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    controller.getDuration(int.parse(widget.destaquesModels?.duration ?? "0"));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screen.height * .30),
        child: SizedBox(
          child: Stack(
            children: [
              SizedBox(
                height: screen.height * .30,
                child: Image.network(
                  '${widget.destaquesModels?.images?.last.url}',
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
                          '${widget.destaquesModels?.title}',
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
                        widget.destaquesModels?.rating == "0.0"
                            ? Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent.shade200,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    widget.destaquesModels?.rating.toString() ==
                                            "0.0"
                                        ? "-"
                                        : widget.destaquesModels?.rating,
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
                                widget.destaquesModels?.duration ?? '0',
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
                      '${widget.destaquesModels?.synopsis?.trim()}',
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
                      'Diretor: ${widget.destaquesModels?.director}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Distribuição: ${widget.destaquesModels?.distributor}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Geneto: ${widget.destaquesModels?.genres}',
                      style: AppStyles.text,
                    ),
                    Text(
                      'Classificação: ${widget.destaquesModels?.contentRating}',
                      style: AppStyles.text,
                    )
                  ],
                ),
              ),
              widget.destaquesModels?.trailers?.length == 0
                  ? Container()
                  : Column(
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
                            itemCount: widget.destaquesModels?.trailers?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 200,
                                      child: Image.network(
                                        '${widget.destaquesModels?.images?.first.url}',
                                        color: AppColors.darkGradientSecond
                                            .withOpacity(0.7),
                                        fit: BoxFit.cover,
                                        colorBlendMode: BlendMode.modulate,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () => controller.goTrailer(
                                        widget.destaquesModels?.trailers?[index]
                                            .url,
                                      ),
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
                    ),
              widget.showTimes == null
                  ? Container()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Cinemas com o filme em sessões',
                            style: AppStyles.buttonText,
                          ),
                        ),
                        Container(
                          height: screen.height * .25,
                          width: screen.width,
                          margin: EdgeInsets.only(left: 20, bottom: 20),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: widget.showTimes?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10, right: 20),
                                height: screen.height * .06,
                                decoration: BoxDecoration(
                                  color: AppColors.darkGradientFirst,
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColors.red,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${widget.showTimes?[index].name}',
                                        style: AppStyles.text,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: AppColors.white,
                                      )
                                    ],
                                  ),
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
