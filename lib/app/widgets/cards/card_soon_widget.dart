import 'package:cached_network_image/cached_network_image.dart';
import 'package:em_cartaz/app/modules/home/models/soon_models.dart';
import 'package:em_cartaz/app/widgets/classific/classific_soon_widget%20copy.dart';
import 'package:flutter/material.dart';

class CardSoonWidget extends StatelessWidget {
  const CardSoonWidget({
    Key? key,
    this.images,
    this.event,
  }) : super(key: key);

  final Images? images;
  final SoonModels? event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: images?.url ??
                'https://image.freepik.com/vetores-gratis/glitch-error-404-page_23-2148105404.jpg',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          ClassificSoonWidget(
            event: event,
          )
        ],
      ),
    );
  }
}
