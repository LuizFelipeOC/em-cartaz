import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'user_identification_store.g.dart';

class UserIdentificationStore = _UserIdentificationStoreBase
    with _$UserIdentificationStore;

abstract class _UserIdentificationStoreBase with Store {
  @observable
  String? user;

  @observable
  String? uf;

  saveInformationInitial({user, uf, context}) async {
    FocusScope.of(context).unfocus();

    final preferences = await SharedPreferences.getInstance();

    if (user == "" || user == null) {
      return;
    }
    if (uf == "" || uf == null) {
      return;
    }

    await preferences.setString('NOME', user.toString().trim());
    await preferences.setString('UF', uf.toString().toUpperCase().trim());

    Modular.to.navigate('/home');
  }
}
