import 'package:em_cartaz/app/modules/container/container_Page.dart';
import 'package:em_cartaz/app/modules/container/container_store.dart';
import 'package:em_cartaz/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContainerModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContainerStore()),
    Bind((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ContainerPage()),
  ];
}
