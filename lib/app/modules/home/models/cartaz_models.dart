class MovieCartaz {
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
  String? partnershipType;
  RottenTomatoe? rottenTomatoe;

  MovieCartaz({
    this.id,
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
    this.partnershipType,
    this.rottenTomatoe,
  });

  MovieCartaz.fromJson(Map<String, dynamic> json) {
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

    if (json['trailers'] != null) {
      trailers = <Trailers>[];
      json['trailers'].forEach((v) {
        trailers!.add(Trailers.fromJson(v));
      });
    }
    partnershipType = json['partnershipType'];
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

    if (trailers != null) {
      data['trailers'] = trailers!.map((v) => v.toJson()).toList();
    }
    data['partnershipType'] = partnershipType;
    if (rottenTomatoe != null) {
      data['rottenTomatoe'] = rottenTomatoe!.toJson();
    }
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
