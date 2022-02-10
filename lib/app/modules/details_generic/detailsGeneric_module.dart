import 'package:em_cartaz/app/modules/details_generic/detailsGeneric_Page.dart';
import 'package:em_cartaz/app/modules/details_generic/detailsGeneric_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsGenericModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsGenericStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DetailsGenericPage()),
  ];
}
