// ignore_for_file: file_names

import 'package:em_cartaz/app/modules/user_identification/userIdentification_page.dart';
import 'package:em_cartaz/app/modules/user_identification/user_identification_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserIdentificationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => UserIdentificationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => const UserIdentificationPage(),
      transition: TransitionType.fadeIn,
    ),
  ];
}
