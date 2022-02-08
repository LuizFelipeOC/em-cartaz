class DestaquesModels {
  Event? event;
  List<Showtimes>? showtimes;

  DestaquesModels({this.event, this.showtimes});

  DestaquesModels.fromJson(Map<String, dynamic> json) {
    event = json['event'] != null ? Event.fromJson(json['event']) : null;
    if (json['showtimes'] != null) {
      showtimes = <Showtimes>[];
      json['showtimes'].forEach((v) {
        showtimes!.add(Showtimes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (event != null) {
      data['event'] = event!.toJson();
    }
    if (showtimes != null) {
      data['showtimes'] = showtimes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Event {
  String? id;
  String? title;
  String? originalTitle;
  String? movieIdUrl;
  String? ancineId;
  String? countryOrigin;
  int? priority;
  String? contentRating;
  String? duration;
  dynamic rating;
  String? synopsis;
  String? cast;
  String? director;
  String? distributor;
  bool? inPreSale;
  bool? isReexhibition;
  String? urlKey;
  bool? isPlaying;
  int? countIsPlaying;
  PremiereDate? premiereDate;
  String? creationDate;
  String? city;
  String? siteURL;
  String? nationalSiteURL;
  List<Images>? images;
  List<String>? genres;
  List<String>? ratingDescriptors;
  List<Trailers>? trailers;
  String? boxOfficeId;
  RottenTomatoe? rottenTomatoe;

  Event(
      {this.id,
      this.title,
      this.originalTitle,
      this.movieIdUrl,
      this.ancineId,
      this.countryOrigin,
      this.priority,
      this.contentRating,
      this.duration,
      this.rating,
      this.synopsis,
      this.cast,
      this.director,
      this.distributor,
      this.inPreSale,
      this.isReexhibition,
      this.urlKey,
      this.isPlaying,
      this.countIsPlaying,
      this.premiereDate,
      this.creationDate,
      this.city,
      this.siteURL,
      this.nationalSiteURL,
      this.images,
      this.genres,
      this.ratingDescriptors,
      this.trailers,
      this.boxOfficeId,
      this.rottenTomatoe});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    originalTitle = json['originalTitle'];
    movieIdUrl = json['movieIdUrl'];
    ancineId = json['ancineId'];
    countryOrigin = json['countryOrigin'];
    priority = json['priority'];
    contentRating = json['contentRating'];
    duration = json['duration'];
    rating = json['rating'];
    synopsis = json['synopsis'];
    cast = json['cast'];
    director = json['director'];
    distributor = json['distributor'];
    inPreSale = json['inPreSale'];
    isReexhibition = json['isReexhibition'];
    urlKey = json['urlKey'];
    isPlaying = json['isPlaying'];
    countIsPlaying = json['countIsPlaying'];
    premiereDate = json['premiereDate'] != null
        ? PremiereDate.fromJson(json['premiereDate'])
        : null;
    creationDate = json['creationDate'];
    city = json['city'];
    siteURL = json['siteURL'];
    nationalSiteURL = json['nationalSiteURL'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    genres = json['genres'].cast<String>();
    ratingDescriptors = json['ratingDescriptors'].cast<String>();

    boxOfficeId = json['boxOfficeId'];
    rottenTomatoe = json['rottenTomatoe'] != null
        ? RottenTomatoe.fromJson(json['rottenTomatoe'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['originalTitle'] = originalTitle;
    data['movieIdUrl'] = movieIdUrl;
    data['ancineId'] = ancineId;
    data['countryOrigin'] = countryOrigin;
    data['priority'] = priority;
    data['contentRating'] = contentRating;
    data['duration'] = duration;
    data['rating'] = rating;
    data['synopsis'] = synopsis;
    data['cast'] = cast;
    data['director'] = director;
    data['distributor'] = distributor;
    data['inPreSale'] = inPreSale;
    data['isReexhibition'] = isReexhibition;
    data['urlKey'] = urlKey;
    data['isPlaying'] = isPlaying;
    data['countIsPlaying'] = countIsPlaying;
    if (premiereDate != null) {
      data['premiereDate'] = premiereDate!.toJson();
    }
    data['creationDate'] = creationDate;
    data['city'] = city;
    data['siteURL'] = siteURL;
    data['nationalSiteURL'] = nationalSiteURL;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['genres'] = genres;
    data['ratingDescriptors'] = ratingDescriptors;
    data['boxOfficeId'] = boxOfficeId;

    return data;
  }
}

class PremiereDate {
  String? localDate;
  bool? isToday;
  String? dayOfWeek;
  String? dayAndMonth;
  String? hour;
  String? year;

  PremiereDate(
      {this.localDate,
      this.isToday,
      this.dayOfWeek,
      this.dayAndMonth,
      this.hour,
      this.year});

  PremiereDate.fromJson(Map<String, dynamic> json) {
    localDate = json['localDate'];
    isToday = json['isToday'];
    dayOfWeek = json['dayOfWeek'];
    dayAndMonth = json['dayAndMonth'];
    hour = json['hour'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['localDate'] = localDate;
    data['isToday'] = isToday;
    data['dayOfWeek'] = dayOfWeek;
    data['dayAndMonth'] = dayAndMonth;
    data['hour'] = hour;
    data['year'] = year;
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

class Trailers {
  String? type;
  String? url;
  String? embeddedUrl;

  Trailers({this.type, this.url, this.embeddedUrl});

  Trailers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
    embeddedUrl = json['embeddedUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['url'] = url;
    data['embeddedUrl'] = embeddedUrl;
    return data;
  }
}

class RottenTomatoe {
  String? id;
  String? criticsRating;
  String? criticsScore;
  String? audienceRating;
  String? audienceScore;
  String? originalUrl;

  RottenTomatoe(
      {this.id,
      this.criticsRating,
      this.criticsScore,
      this.audienceRating,
      this.audienceScore,
      this.originalUrl});

  RottenTomatoe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    criticsRating = json['criticsRating'];
    criticsScore = json['criticsScore'];
    audienceRating = json['audienceRating'];
    audienceScore = json['audienceScore'];
    originalUrl = json['originalUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['criticsRating'] = criticsRating;
    data['criticsScore'] = criticsScore;
    data['audienceRating'] = audienceRating;
    data['audienceScore'] = audienceScore;
    data['originalUrl'] = originalUrl;
    return data;
  }
}

class Showtimes {
  String? id;
  String? name;
  String? address;
  String? addressComplement;
  String? number;
  String? urlKey;
  String? neighborhood;
  Properties? properties;
  Functionalities? functionalities;
  List<String>? deliveryType;
  String? siteURL;
  String? nationalSiteURL;
  bool? enabled;
  String? blockMessage;
  List<Rooms>? rooms;
  Geolocation? geolocation;

  Showtimes({
    this.id,
    this.name,
    this.address,
    this.addressComplement,
    this.number,
    this.urlKey,
    this.neighborhood,
    this.properties,
    this.functionalities,
    this.deliveryType,
    this.siteURL,
    this.nationalSiteURL,
    this.enabled,
    this.blockMessage,
    this.rooms,
    this.geolocation,
  });

  Showtimes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    addressComplement = json['addressComplement'];
    number = json['number'];
    urlKey = json['urlKey'];
    neighborhood = json['neighborhood'];
    properties = json['properties'] != null
        ? Properties.fromJson(json['properties'])
        : null;
    functionalities = json['functionalities'] != null
        ? Functionalities.fromJson(json['functionalities'])
        : null;
    deliveryType = json['deliveryType'].cast<String>();
    siteURL = json['siteURL'];
    nationalSiteURL = json['nationalSiteURL'];
    enabled = json['enabled'];
    blockMessage = json['blockMessage'];
    if (json['rooms'] != null) {
      rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(Rooms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    data['addressComplement'] = addressComplement;
    data['number'] = number;
    data['urlKey'] = urlKey;
    data['neighborhood'] = neighborhood;
    if (properties != null) {
      data['properties'] = properties!.toJson();
    }
    if (functionalities != null) {
      data['functionalities'] = functionalities!.toJson();
    }
    data['deliveryType'] = deliveryType;
    data['siteURL'] = siteURL;
    data['nationalSiteURL'] = nationalSiteURL;
    data['enabled'] = enabled;
    data['blockMessage'] = blockMessage;
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }

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

class Rooms {
  String? name;
  List<Sessions>? sessions;

  Rooms({this.name, this.sessions});

  Rooms.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['sessions'] != null) {
      sessions = <Sessions>[];
      json['sessions'].forEach((v) {
        sessions!.add(Sessions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (sessions != null) {
      data['sessions'] = sessions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sessions {
  String? id;
  double? price;
  String? room;
  List<String>? type;
  List<Types>? types;
  PremiereDate? date;
  PremiereDate? realDate;
  String? time;
  String? defaultSector;
  String? siteURL;
  bool? hasSeatSelection;
  bool? driveIn;
  bool? streaming;
  int? maxTicketsPerCar;
  bool? enabled;
  String? blockMessage;

  Sessions(
      {this.id,
      this.price,
      this.room,
      this.type,
      this.types,
      this.date,
      this.realDate,
      this.time,
      this.defaultSector,
      this.siteURL,
      this.hasSeatSelection,
      this.driveIn,
      this.streaming,
      this.maxTicketsPerCar,
      this.enabled,
      this.blockMessage});

  Sessions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    room = json['room'];
    type = json['type'].cast<String>();
    if (json['types'] != null) {
      types = <Types>[];
      json['types'].forEach((v) {
        types!.add(Types.fromJson(v));
      });
    }
    date = json['date'] != null ? PremiereDate.fromJson(json['date']) : null;
    realDate = json['realDate'] != null
        ? PremiereDate.fromJson(json['realDate'])
        : null;
    time = json['time'];
    defaultSector = json['defaultSector'];
    siteURL = json['siteURL'];
    hasSeatSelection = json['hasSeatSelection'];
    driveIn = json['driveIn'];
    streaming = json['streaming'];
    maxTicketsPerCar = json['maxTicketsPerCar'];
    enabled = json['enabled'];
    blockMessage = json['blockMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['price'] = price;
    data['room'] = room;
    data['type'] = type;
    if (types != null) {
      data['types'] = types!.map((v) => v.toJson()).toList();
    }
    if (date != null) {
      data['date'] = date!.toJson();
    }
    if (realDate != null) {
      data['realDate'] = realDate!.toJson();
    }
    data['time'] = time;
    data['defaultSector'] = defaultSector;
    data['siteURL'] = siteURL;
    data['hasSeatSelection'] = hasSeatSelection;
    data['driveIn'] = driveIn;
    data['streaming'] = streaming;
    data['maxTicketsPerCar'] = maxTicketsPerCar;
    data['enabled'] = enabled;
    data['blockMessage'] = blockMessage;
    return data;
  }
}

class Types {
  int? id;
  String? name;
  String? alias;
  bool? display;

  Types({this.id, this.name, this.alias, this.display});

  Types.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alias = json['alias'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['alias'] = alias;
    data['display'] = display;
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
