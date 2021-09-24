import 'package:testing/app1/abstracts/model_base.dart';

/// id : 385128
/// results : [{"iso_639_1":"en","iso_3166_1":"US","name":"F9 – Dom's Magnet Sandwich – BTS Exclusive","key":"zbZoTOTUZ14","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-06-15T20:43:59.000Z","id":"60f92bc7960331004725a617"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 – Nova Truck Flip – BTS Exclusive","key":"Qf2I6vDVh04","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-06-15T20:43:53.000Z","id":"60f348097b7b4d0020e81ba7"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 – 2 Flippers, 2 Cannons and 1 Cable – BTS Exclusive","key":"5mwXaL4OiZA","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-06-15T20:43:37.000Z","id":"60f3482dad87f70073a5528b"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 – Peligro Minas – BTS Exclusive","key":"M7uhbwSkboc","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-06-15T20:43:15.000Z","id":"60f3484df90b19002d174c7d"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 x Cardi B","key":"Ksv7T0-dNqU","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-06-15T15:00:30.000Z","id":"60f92c21d7fbda0045163f88"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - Anna Sawai Exclusive","key":"iFX0H6cCeYg","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-06-14T22:40:50.000Z","id":"60f92c0edf857c0045b21107"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - Dom's Great Flight - BTS Exclusive","key":"InxBghvvwSY","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-06-11T23:37:34.000Z","id":"60f3486fad87f7002d022a58"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 | Furiosa","key":"RSTCvNfICDY","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-05-27T14:04:49.000Z","id":"60f92c34e24b930075b64768"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 | Thank You World","key":"OmD2PT9jK4c","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-05-23T06:15:14.000Z","id":"60aa038b8dbc3300282d253d"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 | Burj Khalifa Takeover","key":"M-P_tKwSk7I","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-05-20T17:13:41.000Z","id":"60f92c429603310060fd0e4e"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 | The Originals","key":"72SMEK7auUE","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2021-05-17T14:59:29.000Z","id":"60f92c58f1759c002eaf9d43"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 | TOTAL CAR-NAGE","key":"x6m43M92HPI","site":"YouTube","size":1080,"type":"Behind the Scenes","official":true,"published_at":"2021-05-06T15:00:05.000Z","id":"609cce995b370d006f996a27"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - Our Return to Theaters","key":"5eblKqTZ-0Q","site":"YouTube","size":1080,"type":"Trailer","official":true,"published_at":"2021-04-25T16:15:07.000Z","id":"60863d8dc439c0002a43c759"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - Official Trailer 2","key":"fEE4RO-_jug","site":"YouTube","size":1080,"type":"Trailer","official":true,"published_at":"2021-04-14T15:00:01.000Z","id":"60770af72a09bc006e4c1409"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - The Big Game Spot","key":"-hoLr8hKfDY","site":"YouTube","size":1080,"type":"Teaser","official":true,"published_at":"2021-02-07T22:19:25.000Z","id":"60208d92f85958003dde150e"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - In Theaters April 2021 (Hallelujah) [HD]","key":"pPZDV1eCI0c","site":"YouTube","size":1080,"type":"Teaser","official":true,"published_at":"2020-02-02T23:53:25.000Z","id":"609ccf162222f6002a00cbf9"},{"iso_639_1":"en","iso_3166_1":"US","name":"The Road To F9 Concert & Trailer Drop","key":"IfMOzYgu6vM","site":"YouTube","size":1080,"type":"Featurette","official":true,"published_at":"2020-01-31T22:00:23.000Z","id":"609ccf42f2883800574e8df1"},{"iso_639_1":"en","iso_3166_1":"US","name":"F9 - Official Trailer [HD]","key":"aSiDu3Ywi8E","site":"YouTube","size":1080,"type":"Trailer","official":true,"published_at":"2020-01-31T21:14:00.000Z","id":"5e349e0398f1f100120274c5"},{"iso_639_1":"en","iso_3166_1":"US","name":"Fast & Furious 9 - Teaser Trailer | \"Things Change\" (2021)","key":"AvrW9mVE9qU","site":"YouTube","size":1080,"type":"Teaser","official":false,"published_at":"2020-01-28T17:30:23.000Z","id":"5e33a7384ca67600124e7bb2"}]

class MovieVideosModel {
  int? _id;
  List<Results>? _results;

  int? get id => _id;

  List<Results>? get results => _results;

  MovieVideosModel({int? id, List<Results>? results}) {
    _id = id;
    _results = results;
  }
}

class MovieVideosModelSerializer extends ModelBase<MovieVideosModel> {
  MovieVideosModel fromJson(Map<String, dynamic> json) {
    int? _id = json['id'];
    List<Results>? _results = [];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        _results.add(Results.fromJson(v));
      });
    }
    return MovieVideosModel(id: _id, results: _results);
  }

  Map<String, dynamic> toJson(MovieVideosModel movieVideosModel) {
    var map = <String, dynamic>{};
    map['id'] = movieVideosModel._id;
    if (movieVideosModel._results != null) {
      map['results'] = movieVideosModel._results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// iso_639_1 : "en"
/// iso_3166_1 : "US"
/// name : "F9 – Dom's Magnet Sandwich – BTS Exclusive"
/// key : "zbZoTOTUZ14"
/// site : "YouTube"
/// size : 1080
/// type : "Behind the Scenes"
/// official : true
/// published_at : "2021-06-15T20:43:59.000Z"
/// id : "60f92bc7960331004725a617"

class Results {
  String? _iso6391;
  String? _iso31661;
  String? _name;
  String? _key;
  String? _site;
  int? _size;
  String? _type;
  bool? _official;
  String? _publishedAt;
  String? _id;

  String? get iso6391 => _iso6391;

  String? get iso31661 => _iso31661;

  String? get name => _name;

  String? get key => _key;

  String? get site => _site;

  int? get size => _size;

  String? get type => _type;

  bool? get official => _official;

  String? get publishedAt => _publishedAt;

  String? get id => _id;

  Results(
      {String? iso6391,
      String? iso31661,
      String? name,
      String? key,
      String? site,
      int? size,
      String? type,
      bool? official,
      String? publishedAt,
      String? id}) {
    _iso6391 = iso6391;
    _iso31661 = iso31661;
    _name = name;
    _key = key;
    _site = site;
    _size = size;
    _type = type;
    _official = official;
    _publishedAt = publishedAt;
    _id = id;
  }

  Results.fromJson(dynamic json) {
    _iso6391 = json['iso_639_1'];
    _iso31661 = json['iso_3166_1'];
    _name = json['name'];
    _key = json['key'];
    _site = json['site'];
    _size = json['size'];
    _type = json['type'];
    _official = json['official'];
    _publishedAt = json['published_at'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['iso_639_1'] = _iso6391;
    map['iso_3166_1'] = _iso31661;
    map['name'] = _name;
    map['key'] = _key;
    map['site'] = _site;
    map['size'] = _size;
    map['type'] = _type;
    map['official'] = _official;
    map['published_at'] = _publishedAt;
    map['id'] = _id;
    return map;
  }
}
