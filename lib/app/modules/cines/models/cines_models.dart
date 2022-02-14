class CineModels {
  String? id;
  List<Images>? images;
  String? urlKey;
  String? name;
  String? siteURL;
  String? nationalSiteURL;
  String? cnpj;
  String? districtAuthorization;
  String? address;
  String? addressComplement;
  String? number;
  String? cityId;
  String? cityName;
  String? state;
  String? uf;
  String? neighborhood;
  Properties? properties;
  Functionalities? functionalities;
  List<String>? telephones;
  Geolocation? geolocation;
  List<String>? deliveryType;
  String? corporation;
  String? corporationId;
  int? corporationPriority;
  String? corporationAvatarBackground;
  List<Rooms>? rooms;
  int? totalRooms;
  bool? enabled;
  String? blockMessage;

  CineModels({
    this.id,
    this.images,
    this.urlKey,
    this.name,
    this.siteURL,
    this.nationalSiteURL,
    this.cnpj,
    this.districtAuthorization,
    this.address,
    this.addressComplement,
    this.number,
    this.cityId,
    this.cityName,
    this.state,
    this.uf,
    this.neighborhood,
    this.properties,
    this.functionalities,
    this.telephones,
    this.geolocation,
    this.deliveryType,
    this.corporation,
    this.corporationId,
    this.corporationPriority,
    this.corporationAvatarBackground,
    this.rooms,
    this.totalRooms,
    this.enabled,
    this.blockMessage,
  });

  CineModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    urlKey = json['urlKey'];
    name = json['name'];
    siteURL = json['siteURL'];
    nationalSiteURL = json['nationalSiteURL'];
    cnpj = json['cnpj'];
    districtAuthorization = json['districtAuthorization'];
    address = json['address'];
    addressComplement = json['addressComplement'];
    number = json['number'];
    cityId = json['cityId'];
    cityName = json['cityName'];
    state = json['state'];
    uf = json['uf'];
    neighborhood = json['neighborhood'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    functionalities = json['functionalities'] != null
        ? Functionalities.fromJson(json['functionalities'])
        : null;
    telephones = json['telephones'].cast<String>();
    geolocation = json['geolocation'] != null
        ? Geolocation.fromJson(json['geolocation'])
        : null;
    deliveryType = json['deliveryType'].cast<String>();
    corporation = json['corporation'];
    corporationId = json['corporationId'];
    corporationPriority = json['corporationPriority'];
    corporationAvatarBackground = json['corporationAvatarBackground'];
    if (json['rooms'] != null) {
      rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(Rooms.fromJson(v));
      });
    }
    totalRooms = json['totalRooms'];
    enabled = json['enabled'];
    blockMessage = json['blockMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['urlKey'] = urlKey;
    data['name'] = name;
    data['siteURL'] = siteURL;
    data['nationalSiteURL'] = nationalSiteURL;
    data['cnpj'] = cnpj;
    data['districtAuthorization'] = districtAuthorization;
    data['address'] = address;
    data['addressComplement'] = addressComplement;
    data['number'] = number;
    data['cityId'] = cityId;
    data['cityName'] = cityName;
    data['state'] = state;
    data['uf'] = uf;
    data['neighborhood'] = neighborhood;
    if (properties != null) {
      data['properties'] = properties!.toJson();
    }
    if (functionalities != null) {
      data['functionalities'] = functionalities!.toJson();
    }
    data['telephones'] = telephones;
    if (geolocation != null) {
      data['geolocation'] = geolocation!.toJson();
    }
    data['deliveryType'] = deliveryType;
    data['corporation'] = corporation;
    data['corporationId'] = corporationId;
    data['corporationPriority'] = corporationPriority;
    data['corporationAvatarBackground'] = corporationAvatarBackground;
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }
    data['totalRooms'] = totalRooms;
    data['enabled'] = enabled;
    data['blockMessage'] = blockMessage;

    return data;
  }
}

class Images {
  String? url;
  String? type;

  Images({this.url, this.type});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['type'] = type;
    return data;
  }
}

class Properties {
  bool? hasBomboniere;
  bool? hasContactlessWithdrawal;
  bool? hasSession;
  bool? hasSeatDistancePolicy;
  bool? hasSeatDistancePolicyArena;

  Properties(
      {this.hasBomboniere,
      this.hasContactlessWithdrawal,
      this.hasSession,
      this.hasSeatDistancePolicy,
      this.hasSeatDistancePolicyArena});

  Properties.fromJson(Map<String, dynamic> json) {
    hasBomboniere = json['hasBomboniere'];
    hasContactlessWithdrawal = json['hasContactlessWithdrawal'];
    hasSession = json['hasSession'];
    hasSeatDistancePolicy = json['hasSeatDistancePolicy'];
    hasSeatDistancePolicyArena = json['hasSeatDistancePolicyArena'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hasBomboniere'] = hasBomboniere;
    data['hasContactlessWithdrawal'] = hasContactlessWithdrawal;
    data['hasSession'] = hasSession;
    data['hasSeatDistancePolicy'] = hasSeatDistancePolicy;
    data['hasSeatDistancePolicyArena'] = hasSeatDistancePolicyArena;
    return data;
  }
}

class Functionalities {
  bool? operationPolicyEnabled;

  Functionalities({this.operationPolicyEnabled});

  Functionalities.fromJson(Map<String, dynamic> json) {
    operationPolicyEnabled = json['operationPolicyEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['operationPolicyEnabled'] = operationPolicyEnabled;
    return data;
  }
}

class Geolocation {
  double? lat;
  double? lng;

  Geolocation({this.lat, this.lng});

  Geolocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class Rooms {
  String? id;
  String? name;
  String? fullName;
  int? capacity;
  List<Null>? documents;

  Rooms({this.id, this.name, this.fullName, this.capacity, this.documents});

  Rooms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fullName = json['fullName'];
    capacity = json['capacity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['fullName'] = fullName;
    data['capacity'] = capacity;

    return data;
  }
}
