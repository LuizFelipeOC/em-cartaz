import 'package:dio/dio.dart';
import 'package:em_cartaz/app/modules/home/models/city_models.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  _HomeStoreBase() {
    getFilmesCityFornecidas();
  }

  CityModels? cities;

  @observable
  List<DestaquesModels>? listDestques;

  @observable
  bool isLoading = false;

  @action
  getFilmesCityFornecidas() async {
    isLoading = true;
    final prefs = await SharedPreferences.getInstance();
    final dio = Dio();

    var uf = prefs.getString('UF');

    var response =
        await dio.get('https://api-content.ingresso.com/v0/states/$uf');

    cities = CityModels.fromJson(response.data);

    var idCidade = cities?.cities?.first.id;

    var destaquesCidade = await dio.get(
      'https://api-content.ingresso.com/v0/templates/highlights/$idCidade?partnership=%22%22',
    );

    List<dynamic> destaquesModels = destaquesCidade.data;

    var listEvents = destaquesModels
        .map(
          (e) => DestaquesModels.fromJson(e),
        )
        .toList();

    listDestques = listEvents;

    isLoading = false;
  }
}
