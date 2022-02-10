import 'package:mobx/mobx.dart';

part 'detailsGeneric_store.g.dart';

class DetailsGenericStore = _DetailsGenericStoreBase with _$DetailsGenericStore;
abstract class _DetailsGenericStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}