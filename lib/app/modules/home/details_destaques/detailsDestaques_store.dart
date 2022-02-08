import 'package:mobx/mobx.dart';

part 'detailsDestaques_store.g.dart';

class DetailsDestaquesStore = _DetailsDestaquesStoreBase with _$DetailsDestaquesStore;
abstract class _DetailsDestaquesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}