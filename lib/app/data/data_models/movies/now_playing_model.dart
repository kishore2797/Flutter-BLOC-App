import 'package:testing/app/abstracts/model_base.dart';

class NowPlayingModel {
  Dates? _dates;
  int? _page;
  List<Results>? _results;
  int? _totalPages;
  int? _totalResults;

  Dates? get dates => _dates;
  int? get page => _page;
  List<Results>? get results => _results;
  int? get totalPages => _totalPages;
  int? get totalResults => _totalResults;

  NowPlayingModel(
      {Dates? dates,
      int? page,
      List<Results>? results,
      int? totalPages,
      int? totalResults}) {
    _dates = dates;
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
  }
}

class NowPlayingModeSerializer extends ModelBase<NowPlayingModel> {
  @override
  NowPlayingModel fromJson(Map<String, dynamic> json) {
    Dates? _dates =
        json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    int? _page = json['page'];
    List<Results>? _results = [];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        _results.add(Results.fromJson(v));
      });
    }
    int? _totalPages = json['total_pages'];
    int? _totalResults = json['total_results'];

    return NowPlayingModel(
        dates: _dates,
        page: _page,
        results: _results,
        totalPages: _totalPages,
        totalResults: _totalResults);
  }

  @override
  Map<String, dynamic> toJson(NowPlayingModel nowPlayingModel) {
    var map = <String, dynamic>{};
    if (nowPlayingModel._dates != null) {
      map['dates'] = nowPlayingModel._dates?.toJson();
    }
    map['page'] = nowPlayingModel._page;
    if (nowPlayingModel._results != null) {
      map['results'] =
          nowPlayingModel._results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = nowPlayingModel._totalPages;
    map['total_results'] = nowPlayingModel._totalResults;
    return map;
  }
}

/// adult : false
/// backdrop_path : "/pUc51UUQb1lMLVVkDCaZVsCo37U.jpg"
/// genre_ids : [53,27]
/// id : 482373
/// original_language : "en"
/// original_title : "Don't Breathe 2"
/// overview : "The Blind Man has been hiding out for several years in an isolated cabin and has taken in and raised a young girl orphaned from a devastating house fire. Their quiet life together is shattered when a group of criminals kidnap the girl, forcing the Blind Man to leave his safe haven to save her."
/// popularity : 3581.263
/// poster_path : "/hRMfgGFRAZIlvwVWy8DYJdLTpvN.jpg"
/// release_date : "2021-08-12"
/// title : "Don't Breathe 2"
/// video : false
/// vote_average : 7.6
/// vote_count : 381

class Results {
  bool? _adult;
  String? _backdropPath;
  List<int>? _genreIds;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  bool? get adult => _adult;

  String? get backdropPath => _backdropPath;

  List<int>? get genreIds => _genreIds;

  int? get id => _id;

  String? get originalLanguage => _originalLanguage;

  String? get originalTitle => _originalTitle;

  String? get overview => _overview;

  double? get popularity => _popularity;

  String? get posterPath => _posterPath;

  String? get releaseDate => _releaseDate;

  String? get title => _title;

  bool? get video => _video;

  double? get voteAverage => _voteAverage;

  int? get voteCount => _voteCount;

  Results(
      {bool? adult,
      String? backdropPath,
      List<int>? genreIds,
      int? id,
      String? originalLanguage,
      String? originalTitle,
      String? overview,
      double? popularity,
      String? posterPath,
      String? releaseDate,
      String? title,
      bool? video,
      double? voteAverage,
      int? voteCount}) {
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  Results.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'].toDouble();
    _voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }
}

/// maximum : "2021-09-14"
/// minimum : "2021-07-28"

class Dates {
  String? _maximum;
  String? _minimum;

  String? get maximum => _maximum;

  String? get minimum => _minimum;

  Dates({String? maximum, String? minimum}) {
    _maximum = maximum;
    _minimum = minimum;
  }

  Dates.fromJson(dynamic json) {
    _maximum = json['maximum'];
    _minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['maximum'] = _maximum;
    map['minimum'] = _minimum;
    return map;
  }
}
