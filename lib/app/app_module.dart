import 'package:em_cartaz/app/modules/home/home_module.dart';
import 'package:em_cartaz/app/modules/splash/splash_module.dart';
import 'package:em_cartaz/app/modules/splash/splash_page.dart';
import 'package:em_cartaz/app/modules/user_identification/userIdentification_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
  ];
}
