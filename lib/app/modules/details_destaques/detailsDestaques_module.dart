import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_page.dart';
import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_store.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsDestaquesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailsDestaquesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => DetailsDestaquesPage(
        destaquesModels: args.data[0],
        showTimes: args.data == null ? <List<Showtimes>>[] : args.data[1],
      ),
      transition: TransitionType.fadeIn,
    ),
  ];
}
