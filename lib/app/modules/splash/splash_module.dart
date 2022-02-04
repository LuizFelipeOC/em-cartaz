import 'package:em_cartaz/app/modules/home/home_page.dart';
import 'package:em_cartaz/app/modules/splash/splash_Page.dart';
import 'package:em_cartaz/app/modules/splash/splash_store.dart';
import 'package:em_cartaz/app/modules/user_identification/userIdentification_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const SplashPage()),
    ChildRoute(
      '/user/identification',
      child: (_, args) => const UserIdentificationPage(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
