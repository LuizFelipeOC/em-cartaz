import 'package:mobx/mobx.dart';

part 'detailsSoon_store.g.dart';

class DetailsSoonStore = _DetailsSoonStoreBase with _$DetailsSoonStore;
abstract class _DetailsSoonStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}