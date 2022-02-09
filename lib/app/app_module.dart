import 'package:em_cartaz/app/modules/details_destaques/detailsDestaques_module.dart';
import 'package:em_cartaz/app/modules/details_posters/detailsPosters_module.dart';
import 'package:em_cartaz/app/modules/details_soon/detailsSoon_module.dart';
import 'package:em_cartaz/app/modules/home/home_module.dart';
import 'package:em_cartaz/app/modules/splash/splash_module.dart';
import 'package:em_cartaz/app/modules/user_identification/userIdentification_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/initialConfig/', module: UserIdentificationModule()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/home/details/destaques/', module: DetailsDestaquesModule()),
    ModuleRoute('/home/details/embreve/', module: DetailsSoonModule()),
    ModuleRoute('/home/details/cartaz/', module: DetailsPostersModule())
  ];
}
