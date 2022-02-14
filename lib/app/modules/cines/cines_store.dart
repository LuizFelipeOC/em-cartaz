import 'package:dio/dio.dart';
import 'package:em_cartaz/app/modules/cines/models/cines_models.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'cines_store.g.dart';

class CinesStore = _CinesStoreBase with _$CinesStore;

abstract class _CinesStoreBase with Store {
  _CinesStoreBase() {
    getCinesCity();
  }

  @observable
  List<CineModels>? list;

  @observable
  bool isLoading = false;

  @action
  getCinesCity() async {
    isLoading = true;
    final prefs = await SharedPreferences.getInstance();
    final dio = Dio();

    final idcidade = prefs.getString('idcidade');

    final response = await dio.get(
        'https://api-content.ingresso.com/v0/theaters/city/$idcidade?partnership=');

    List records = response.data;

    final listCines = records.map((e) => CineModels.fromJson(e)).toList();

    list = listCines;

    isLoading = false;
  }
}
