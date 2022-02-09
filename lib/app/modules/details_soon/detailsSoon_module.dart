import 'package:em_cartaz/app/modules/details_soon/detailsSoon_Page.dart';
import 'package:em_cartaz/app/modules/details_soon/detailsSoon_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsSoonModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsSoonStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const DetailsSoonPage(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
