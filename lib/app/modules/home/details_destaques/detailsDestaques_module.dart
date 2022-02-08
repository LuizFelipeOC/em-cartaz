import 'package:em_cartaz/app/modules/home/details_destaques/detailsDestaques_Page.dart';
import 'package:em_cartaz/app/modules/home/details_destaques/detailsDestaques_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsDestaquesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsDestaquesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const DetailsDestaquesPage()),
  ];
}
