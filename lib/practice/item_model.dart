/// page : 1
/// total_results : 19772
/// total_pages : 989
/// results : [{"vote_count":6503,"id":299536,"video":false,"vote_average":8.3,"title":"Avengers: Infinity War","popularity":350.154,"poster_path":"/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg","original_language":"en","original_title":"Avengers: Infinity War","genre_ids":[12,878,14,28],"backdrop_path":"/bOGkgRGdhrBYJSLpXaxhXVstddV.jpg","adult":false,"overview":"As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.","release_date":"2018-04-25"}]

class ItemModel {
  int? _page;
  int? _totalResults;
  int? _totalPages;
  List<Results>? _results;

  int? get page => _page;
  int? get totalResults => _totalResults;
  int? get totalPages => _totalPages;
  List<Results>? get results => _results;

  ItemModel({
      int? page, 
      int? totalResults, 
      int? totalPages, 
      List<Results>? results}){
    _page = page;
    _totalResults = totalResults;
    _totalPages = totalPages;
    _results = results;
}

  ItemModel.fromJson(dynamic json) {
    _page = json['page'];
    _totalResults = json['total_results'];
    _totalPages = json['total_pages'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['page'] = _page;
    map['total_results'] = _totalResults;
    map['total_pages'] = _totalPages;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// vote_count : 6503
/// id : 299536
/// video : false
/// vote_average : 8.3
/// title : "Avengers: Infinity War"
/// popularity : 350.154
/// poster_path : "/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"
/// original_language : "en"
/// original_title : "Avengers: Infinity War"
/// genre_ids : [12,878,14,28]
/// backdrop_path : "/bOGkgRGdhrBYJSLpXaxhXVstddV.jpg"
/// adult : false
/// overview : "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain."
/// release_date : "2018-04-25"

class Results {
  int? _voteCount;
  int? _id;
  bool? _video;
  double? _voteAverage;
  String? _title;
  double? _popularity;
  String? _posterPath;
  String? _originalLanguage;
  String? _originalTitle;
  List<int>? _genreIds;
  String? _backdropPath;
  bool? _adult;
  String? _overview;
  String? _releaseDate;

  int? get voteCount => _voteCount;
  int? get id => _id;
  bool? get video => _video;
  double? get voteAverage => _voteAverage;
  String? get title => _title;
  double? get popularity => _popularity;
  String? get posterPath => _posterPath;
  String? get originalLanguage => _originalLanguage;
  String? get originalTitle => _originalTitle;
  List<int>? get genreIds => _genreIds;
  String? get backdropPath => _backdropPath;
  bool? get adult => _adult;
  String? get overview => _overview;
  String? get releaseDate => _releaseDate;

  Results({
      int? voteCount, 
      int? id, 
      bool? video, 
      double? voteAverage, 
      String? title, 
      double? popularity, 
      String? posterPath, 
      String? originalLanguage, 
      String? originalTitle, 
      List<int>? genreIds, 
      String? backdropPath, 
      bool? adult, 
      String? overview, 
      String? releaseDate}){
    _voteCount = voteCount;
    _id = id;
    _video = video;
    _voteAverage = voteAverage;
    _title = title;
    _popularity = popularity;
    _posterPath = posterPath;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _genreIds = genreIds;
    _backdropPath = backdropPath;
    _adult = adult;
    _overview = overview;
    _releaseDate = releaseDate;
}

  Results.fromJson(dynamic json) {
    _voteCount = json['vote_count'];
    _id = json['id'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _title = json['title'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _backdropPath = json['backdrop_path'];
    _adult = json['adult'];
    _overview = json['overview'];
    _releaseDate = json['release_date'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['vote_count'] = _voteCount;
    map['id'] = _id;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['title'] = _title;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['genre_ids'] = _genreIds;
    map['backdrop_path'] = _backdropPath;
    map['adult'] = _adult;
    map['overview'] = _overview;
    map['release_date'] = _releaseDate;
    return map;
  }

}