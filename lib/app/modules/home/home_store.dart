import 'package:dio/dio.dart';
import 'package:em_cartaz/app/modules/home/models/cartaz_models.dart';
import 'package:em_cartaz/app/modules/home/models/city_models.dart';
import 'package:em_cartaz/app/modules/home/models/destaques_models.dart';
import 'package:em_cartaz/app/modules/home/models/soon_models.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  _HomeStoreBase() {
    getMoviesDestaques();
    getMoviesCartaz();
    getMoviesSoon();
  }

  CityModels? cities;

  @observable
  List<DestaquesModels>? listDestques;

  @observable
  List<MovieCartaz>? listCartaz;

  @observable
  List<SoonModels>? listSoon;

  @observable
  bool isLoading = false;

  @observable
  int index = 1;

  @action
  getMoviesDestaques() async {
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

    final listEvents = destaquesModels
        .map(
          (e) => DestaquesModels.fromJson(e),
        )
        .toList();

    listDestques = listEvents;
  }

  @action
  getMoviesCartaz() async {
    final prefs = await SharedPreferences.getInstance();
    final dio = Dio();

    var uf = prefs.getString('UF');

    var response =
        await dio.get('https://api-content.ingresso.com/v0/states/$uf');

    cities = CityModels.fromJson(response.data);

    var idCidade = cities?.cities?.first.id;

    var destaquesCartaz = await dio.get(
      'https://api-content.ingresso.com/v0/templates/nowplaying/$idCidade?partnership=',
    );

    List<dynamic> listaC = destaquesCartaz.data;

    listCartaz = listaC.map((e) => MovieCartaz.fromJson(e)).toList();
  }

  @action
  getMoviesSoon() async {
    final prefs = await SharedPreferences.getInstance();
    final dio = Dio();

    var uf = prefs.getString('UF');

    var response =
        await dio.get('https://api-content.ingresso.com/v0/states/$uf');

    cities = CityModels.fromJson(response.data);

    var idCidade = cities?.cities?.first.id;

    var soonMovies = await dio.get(
      'https://api-content.ingresso.com/v0/templates/soon/$idCidade?partnership=',
    );

    List<dynamic> listaSoonMovies = soonMovies.data;

    listSoon = listaSoonMovies.map((e) => SoonModels.fromJson(e)).toList();

    isLoading = false;
  }

  @action
  bottomBarController(value) {
    index = value;
  }
}
