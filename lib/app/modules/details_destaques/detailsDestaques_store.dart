import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'detailsDestaques_store.g.dart';

class DetailsDestaquesStore = _DetailsDestaquesStoreBase
    with _$DetailsDestaquesStore;

abstract class _DetailsDestaquesStoreBase with Store {
  @observable
  String? movieHours;

  returnPage() async {
    Modular.to.pop();
  }

  @action
  getDuration(int? duration) {
    final hour = duration! / 60;

    dynamic minutes = duration % 60;

    if (minutes < 10) {
      minutes = "0" + minutes.toString();
    }

    return movieHours = '${hour.floor()} : $minutes';
  }

  goTrailer(url) {
    launch(url);
  }
}
