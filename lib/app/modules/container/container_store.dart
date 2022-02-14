import 'package:em_cartaz/app/modules/home/home_page.dart';
import 'package:em_cartaz/app/modules/home/teste.dart';
import 'package:mobx/mobx.dart';

part 'container_store.g.dart';

class ContainerStore = _ContainerStoreBase with _$ContainerStore;

abstract class _ContainerStoreBase with Store {
  @observable
  int index = 1;

  @action
  bottomBarController(value) {
    index = value;
  }

  final listasPage = [
    Test(
      title: '2',
    ),
    const HomePage(),
    Test(
      title: '3',
    ),
    Test(
      title: '4',
    ),
  ];
}
