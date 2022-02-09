import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'detailsDestaques_store.g.dart';

class DetailsDestaquesStore = _DetailsDestaquesStoreBase
    with _$DetailsDestaquesStore;

abstract class _DetailsDestaquesStoreBase with Store {
  @observable
  String? movieHours;

  returnPage() async {
    Modular.to.navigate('/home/');
  }

  @action
  getDuration(int? duration) {
    final hour = duration! / 60;

    final minutes = duration % 60;

    return movieHours = '${hour.floor()} : $minutes';
  }
}
