import 'package:cached_network_image/cached_network_image.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:em_cartaz/app/widgets/classific_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.images,
    this.event,
  }) : super(key: key);

  final Images? images;
  final Event? event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: '${images?.url}',
            placeholder: (context, url) => const CircularProgressIndicator(),
            // errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          ClassificWidget(
            event: event,
          )
        ],
      ),
    );
  }
}
