import 'package:em_cartaz/app/modules/cines/cines_Page.dart';
import 'package:em_cartaz/app/modules/cines/cines_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CinesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CinesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CinesPage()),
  ];
}
