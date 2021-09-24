import 'package:testing/app1/abstracts/model_base.dart';

/// genres : [{"id":28,"name":"Action"},{"id":12,"name":"Adventure"},{"id":16,"name":"Animation"},{"id":35,"name":"Comedy"},{"id":80,"name":"Crime"},{"id":99,"name":"Documentary"},{"id":18,"name":"Drama"},{"id":10751,"name":"Family"},{"id":14,"name":"Fantasy"},{"id":36,"name":"History"},{"id":27,"name":"Horror"},{"id":10402,"name":"Music"},{"id":9648,"name":"Mystery"},{"id":10749,"name":"Romance"},{"id":878,"name":"Science Fiction"},{"id":10770,"name":"TV Movie"},{"id":53,"name":"Thriller"},{"id":10752,"name":"War"},{"id":37,"name":"Western"}]

class GenresModel {
  List<Genres>? _genres;

  List<Genres>? get genres => _genres;

  GenresModel({List<Genres>? genres}) {
    _genres = genres;
  }
}

class GenresModelSerializer extends ModelBase<GenresModel> {
  @override
  GenresModel fromJson(Map<String, dynamic> json) {
    List<Genres>? _genres = [];

    if (json['genres'] != null) {
      json['genres'].forEach((v) {
        _genres.add(Genres.fromJson(v));
      });
    }

    return GenresModel(genres: _genres);
  }

  @override
  Map<String, dynamic> toJson(GenresModel genresModel) {
    var map = <String, dynamic>{};
    if (genresModel._genres != null) {
      map['genres'] = genresModel._genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 28
/// name : "Action"

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
