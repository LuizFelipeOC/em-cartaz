import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'detailsDestaques_store.g.dart';

class DetailsDestaquesStore = _DetailsDestaquesStoreBase
    with _$DetailsDestaquesStore;

abstract class _DetailsDestaquesStoreBase with Store {
  returnPage() async {
    Modular.to.navigate('/home/');
  }
}
