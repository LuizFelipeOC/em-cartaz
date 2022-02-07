class CityModels {
  String? name;
  String? uf;
  List<Cities>? cities;

  CityModels({this.name, this.uf, this.cities});

  CityModels.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uf = json['uf'];
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach(
        (v) {
          cities!.add(
            Cities.fromJson(v),
          );
        },
      );
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['uf'] = uf;
    if (cities != null) {
      data['cities'] = cities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cities {
  String? id;
  String? name;
  String? uf;
  String? state;
  String? urlKey;
  String? timeZone;

  Cities({this.id, this.name, this.uf, this.state, this.urlKey, this.timeZone});

  Cities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    uf = json['uf'];
    state = json['state'];
    urlKey = json['urlKey'];
    timeZone = json['timeZone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['uf'] = uf;
    data['state'] = state;
    data['urlKey'] = urlKey;
    data['timeZone'] = timeZone;
    return data;
  }
}
