import 'package:testing/app1/abstracts/model_base.dart';

/// adult : false
/// backdrop_path : "/dFYguAfeVt19qAbzJ5mArn7DEJw.jpg"
/// belongs_to_collection : {"id":137697,"name":"Finding Nemo Collection","poster_path":"/xwggrEugjcJDuabIWvK2CpmK91z.jpg","backdrop_path":"/2hC8HHRUvwRljYKIcQDMyMbLlxz.jpg"}
/// budget : 94000000
/// genres : [{"id":16,"name":"Animation"},{"id":10751,"name":"Family"}]
/// homepage : "http://movies.disney.com/finding-nemo"
/// id : 12
/// imdb_id : "tt0266543"
/// original_language : "en"
/// original_title : "Finding Nemo"
/// overview : "Nemo, an adventurous young clownfish, is unexpectedly taken from his Great Barrier Reef home to a dentist's office aquarium. It's up to his worrisome father Marlin and a friendly but forgetful fish Dory to bring Nemo home -- meeting vegetarian sharks, surfer dude turtles, hypnotic jellyfish, hungry seagulls, and more along the way."
/// popularity : 72.53
/// poster_path : "/eHuGQ10FUzK1mdOY69wF5pGgEf5.jpg"
/// production_companies : [{"id":3,"logo_path":"/1TjvGVDMYsj6JBxOAkUHpPEwLf7.png","name":"Pixar","origin_country":"US"}]
/// production_countries : [{"iso_3166_1":"US","name":"United States of America"}]
/// release_date : "2003-05-30"
/// revenue : 940335536
/// runtime : 100
/// spoken_languages : [{"english_name":"English","iso_639_1":"en","name":"English"}]
/// status : "Released"
/// tagline : "There are 3.7 trillion fish in the ocean. They're looking for one."
/// title : "Finding Nemo"
/// video : false
/// vote_average : 7.8
/// vote_count : 15404

class MovieDetailsModel {
  bool? _adult;
  String? _backdropPath;
  Belongs_to_collection? _belongsToCollection;
  int? _budget;
  List<Genres>? _genres;
  String? _homepage;
  int? _id;
  String? _imdbId;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  List<Production_companies>? _productionCompanies;
  List<Production_countries>? _productionCountries;
  String? _releaseDate;
  int? _revenue;
  int? _runtime;
  List<Spoken_languages>? _spokenLanguages;
  String? _status;
  String? _tagline;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  bool? get adult => _adult;

  String? get backdropPath => _backdropPath;

  Belongs_to_collection? get belongsToCollection => _belongsToCollection;

  int? get budget => _budget;

  List<Genres>? get genres => _genres;

  String? get homepage => _homepage;

  int? get id => _id;

  String? get imdbId => _imdbId;

  String? get originalLanguage => _originalLanguage;

  String? get originalTitle => _originalTitle;

  String? get overview => _overview;

  double? get popularity => _popularity;

  String? get posterPath => _posterPath;

  List<Production_companies>? get productionCompanies => _productionCompanies;

  List<Production_countries>? get productionCountries => _productionCountries;

  String? get releaseDate => _releaseDate;

  int? get revenue => _revenue;

  int? get runtime => _runtime;

  List<Spoken_languages>? get spokenLanguages => _spokenLanguages;

  String? get status => _status;

  String? get tagline => _tagline;

  String? get title => _title;

  bool? get video => _video;

  double? get voteAverage => _voteAverage;

  int? get voteCount => _voteCount;

  MovieDetailsModel(
      {bool? adult,
      String? backdropPath,
      Belongs_to_collection? belongsToCollection,
      int? budget,
      List<Genres>? genres,
      String? homepage,
      int? id,
      String? imdbId,
      String? originalLanguage,
      String? originalTitle,
      String? overview,
      double? popularity,
      String? posterPath,
      List<Production_companies>? productionCompanies,
      List<Production_countries>? productionCountries,
      String? releaseDate,
      int? revenue,
      int? runtime,
      List<Spoken_languages>? spokenLanguages,
      String? status,
      String? tagline,
      String? title,
      bool? video,
      double? voteAverage,
      int? voteCount}) {
    _adult = adult;
    _backdropPath = backdropPath;
    _belongsToCollection = belongsToCollection;
    _budget = budget;
    _genres = genres;
    _homepage = homepage;
    _id = id;
    _imdbId = imdbId;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _productionCompanies = productionCompanies;
    _productionCountries = productionCountries;
    _releaseDate = releaseDate;
    _revenue = revenue;
    _runtime = runtime;
    _spokenLanguages = spokenLanguages;
    _status = status;
    _tagline = tagline;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }
}

class MovieDetailsModelSerializer extends ModelBase<MovieDetailsModel> {
  MovieDetailsModel fromJson(Map<String, dynamic> json) {
    bool? _adult = json['adult'];
    String? _backdropPath = json['backdrop_path'];
    Belongs_to_collection? _belongsToCollection = json['belongs_to_collection'] != null
        ? Belongs_to_collection.fromJson(json['belongs_to_collection'])
        : null;
    int? _budget = json['budget'];
    List<Genres>? _genres = [];
    if (json['genres'] != null) {
      json['genres'].forEach((v) {
        _genres.add(Genres.fromJson(v));
      });
    }
    String? _homepage = json['homepage'];
    int? _id = json['id'];
    String? _imdbId = json['imdb_id'];
    String? _originalLanguage = json['original_language'];
    String? _originalTitle = json['original_title'];
    String? _overview = json['overview'];
    double? _popularity = json['popularity'];
    String?  _posterPath = json['poster_path'];
    List<Production_companies>? _productionCompanies = [];
    if (json['production_companies'] != null) {
      json['production_companies'].forEach((v) {
        _productionCompanies.add(Production_companies.fromJson(v));
      });
    }
    List<Production_countries>? _productionCountries = [];
    if (json['production_countries'] != null) {
      json['production_countries'].forEach((v) {
        _productionCountries.add(Production_countries.fromJson(v));
      });
    }
    String? _releaseDate = json['release_date'];
    int? _revenue = json['revenue'];
    int? _runtime = json['runtime'];
    List<Spoken_languages>? _spokenLanguages = [];
    if (json['spoken_languages'] != null) {
      json['spoken_languages'].forEach((v) {
        _spokenLanguages.add(Spoken_languages.fromJson(v));
      });
    }
    String? _status = json['status'];
    String? _tagline = json['tagline'];
    String? _title = json['title'];
    bool? _video = json['video'];
    double? _voteAverage = json['vote_average'].toDouble();
    int? _voteCount = json['vote_count'];

    return MovieDetailsModel(
      adult : _adult,
      backdropPath : _backdropPath,
      belongsToCollection : _belongsToCollection,
      budget : _budget,
      genres : _genres,
      homepage : _homepage,
      id : _id,
      imdbId : _imdbId,
      originalLanguage : _originalLanguage,
      originalTitle : _originalTitle,
      overview : _overview,
      popularity : _popularity,
      posterPath : _posterPath,
      productionCompanies : _productionCompanies,
      productionCountries : _productionCountries,
      releaseDate : _releaseDate,
      revenue : _revenue,
      runtime : _runtime,
      spokenLanguages : _spokenLanguages,
      status : _status,
      tagline : _tagline,
      title : _title,
      video : _video,
      voteAverage : _voteAverage,
      voteCount : _voteCount,
    );
  }

  Map<String, dynamic> toJson(MovieDetailsModel movieDetailsModel) {
    var map = <String, dynamic>{};
    map['adult'] = movieDetailsModel._adult;
    map['backdrop_path'] = movieDetailsModel._backdropPath;
    if (movieDetailsModel._belongsToCollection != null) {
      map['belongs_to_collection'] = movieDetailsModel._belongsToCollection?.toJson();
    }
    map['budget'] = movieDetailsModel._budget;
    if (movieDetailsModel._genres != null) {
      map['genres'] = movieDetailsModel._genres?.map((v) => v.toJson()).toList();
    }
    map['homepage'] = movieDetailsModel._homepage;
    map['id'] = movieDetailsModel._id;
    map['imdb_id'] = movieDetailsModel._imdbId;
    map['original_language'] = movieDetailsModel._originalLanguage;
    map['original_title'] = movieDetailsModel._originalTitle;
    map['overview'] = movieDetailsModel._overview;
    map['popularity'] = movieDetailsModel._popularity;
    map['poster_path'] = movieDetailsModel._posterPath;
    if (movieDetailsModel._productionCompanies != null) {
      map['production_companies'] =
          movieDetailsModel._productionCompanies?.map((v) => v.toJson()).toList();
    }
    if (movieDetailsModel._productionCountries != null) {
      map['production_countries'] =
          movieDetailsModel._productionCountries?.map((v) => v.toJson()).toList();
    }
    map['release_date'] = movieDetailsModel._releaseDate;
    map['revenue'] = movieDetailsModel._revenue;
    map['runtime'] = movieDetailsModel._runtime;
    if (movieDetailsModel._spokenLanguages != null) {
      map['spoken_languages'] =
          movieDetailsModel._spokenLanguages?.map((v) => v.toJson()).toList();
    }
    map['status'] = movieDetailsModel._status;
    map['tagline'] = movieDetailsModel._tagline;
    map['title'] = movieDetailsModel._title;
    map['video'] = movieDetailsModel._video;
    map['vote_average'] = movieDetailsModel._voteAverage;
    map['vote_count'] = movieDetailsModel._voteCount;
    return map;
  }
}

/// english_name : "English"
/// iso_639_1 : "en"
/// name : "English"

class Spoken_languages {
  String? _englishName;
  String? _iso6391;
  String? _name;

  String? get englishName => _englishName;

  String? get iso6391 => _iso6391;

  String? get name => _name;

  Spoken_languages({String? englishName, String? iso6391, String? name}) {
    _englishName = englishName;
    _iso6391 = iso6391;
    _name = name;
  }

  Spoken_languages.fromJson(dynamic json) {
    _englishName = json['english_name'];
    _iso6391 = json['iso_639_1'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['english_name'] = _englishName;
    map['iso_639_1'] = _iso6391;
    map['name'] = _name;
    return map;
  }
}

/// iso_3166_1 : "US"
/// name : "United States of America"

class Production_countries {
  String? _iso31661;
  String? _name;

  String? get iso31661 => _iso31661;

  String? get name => _name;

  Production_countries({String? iso31661, String? name}) {
    _iso31661 = iso31661;
    _name = name;
  }

  Production_countries.fromJson(dynamic json) {
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    return map;
  }
}

/// id : 3
/// logo_path : "/1TjvGVDMYsj6JBxOAkUHpPEwLf7.png"
/// name : "Pixar"
/// origin_country : "US"

class Production_companies {
  int? _id;
  String? _logoPath;
  String? _name;
  String? _originCountry;

  int? get id => _id;

  String? get logoPath => _logoPath;

  String? get name => _name;

  String? get originCountry => _originCountry;

  Production_companies(
      {int? id, String? logoPath, String? name, String? originCountry}) {
    _id = id;
    _logoPath = logoPath;
    _name = name;
    _originCountry = originCountry;
  }

  Production_companies.fromJson(dynamic json) {
    _id = json['id'];
    _logoPath = json['logo_path'];
    _name = json['name'];
    _originCountry = json['origin_country'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['logo_path'] = _logoPath;
    map['name'] = _name;
    map['origin_country'] = _originCountry;
    return map;
  }
}

/// id : 16
/// name : "Animation"

class Genres {
  int? _id;
  String? _name;

  int? get id => _id;

  String? get name => _name;

  Genres({int? id, String? name}) {
    _id = id;
    _name = name;
  }

  Genres.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

/// id : 137697
/// name : "Finding Nemo Collection"
/// poster_path : "/xwggrEugjcJDuabIWvK2CpmK91z.jpg"
/// backdrop_path : "/2hC8HHRUvwRljYKIcQDMyMbLlxz.jpg"

class Belongs_to_collection {
  int? _id;
  String? _name;
  String? _posterPath;
  String? _backdropPath;

  int? get id => _id;

  String? get name => _name;

  String? get posterPath => _posterPath;

  String? get backdropPath => _backdropPath;

  Belongs_to_collection(
      {int? id, String? name, String? posterPath, String? backdropPath}) {
    _id = id;
    _name = name;
    _posterPath = posterPath;
    _backdropPath = backdropPath;
  }

  Belongs_to_collection.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _posterPath = json['poster_path'];
    _backdropPath = json['backdrop_path'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['poster_path'] = _posterPath;
    map['backdrop_path'] = _backdropPath;
    return map;
  }
}
