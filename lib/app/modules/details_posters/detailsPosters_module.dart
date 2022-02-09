import 'package:em_cartaz/app/modules/details_posters/detailsPosters_Page.dart';
import 'package:em_cartaz/app/modules/details_posters/detailsPosters_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsPostersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsPostersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const DetailsPostersPage(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
