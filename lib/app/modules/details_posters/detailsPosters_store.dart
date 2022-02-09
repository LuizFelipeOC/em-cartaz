import 'package:mobx/mobx.dart';

part 'detailsPosters_store.g.dart';

class DetailsPostersStore = _DetailsPostersStoreBase with _$DetailsPostersStore;

abstract class _DetailsPostersStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
