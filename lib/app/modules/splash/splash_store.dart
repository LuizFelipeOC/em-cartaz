import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStoreBase with _$SplashStore;

abstract class _SplashStoreBase with Store {
  verifyCache() async {
    final prefs = await SharedPreferences.getInstance();

    final user = prefs.getString('NOME');

    if (user!.isEmpty || user == "") {
      return Modular.to.pushReplacementNamed('/initialConfig/');
    }

    Modular.to.pushReplacementNamed('/home/');
  }
}
