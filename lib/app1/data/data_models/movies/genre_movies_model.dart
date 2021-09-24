import 'package:testing/app1/abstracts/model_base.dart';

class GenreMoviesModel {
  int? _page;
  List<Results>? _results;
  int? _totalPages;
  int? _totalResults;

  int? get page => _page;

  List<Results>? get results => _results;

  int? get totalPages => _totalPages;

  int? get totalResults => _totalResults;

  GenreMoviesModel(
      {int? page, List<Results>? results, int? totalPages, int? totalResults}) {
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
  }
}

class GenreMoviesModelSerializer extends ModelBase<GenreMoviesModel> {
  GenreMoviesModel fromJson(Map<String, dynamic> json) {
    int? _page = json['page'];
    List<Results>? _results = [];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        _results.add(Results.fromJson(v));
      });
    }
    int? _totalPages = json['total_pages'];
    int? _totalResults = json['total_results'];

    return GenreMoviesModel(
        page: _page,
        results: _results,
        totalPages: _totalPages,
        totalResults: _totalResults);
  }

  Map<String, dynamic> toJson(GenreMoviesModel genreMoviesModel) {
    var map = <String, dynamic>{};
    map['page'] = genreMoviesModel._page;
    if (genreMoviesModel._results != null) {
      map['results'] =
          genreMoviesModel._results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = genreMoviesModel._totalPages;
    map['total_results'] = genreMoviesModel._totalResults;
    return map;
  }
}

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
