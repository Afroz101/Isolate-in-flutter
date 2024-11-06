import 'dart:convert';

MovieModel movieModelFromJson(String str) =>
    MovieModel.fromJson(json.decode(str));

String movieModelToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
  MovieModel({
    List<Movies>? movies,
  }) {
    _movies = movies;
  }

  MovieModel.fromJson(dynamic json) {
    if (json['movies'] != null) {
      _movies = [];
      json['movies'].forEach((v) {
        _movies?.add(Movies.fromJson(v));
      });
    }
  }

  List<Movies>? _movies;

  MovieModel copyWith({
    List<Movies>? movies,
  }) =>
      MovieModel(
        movies: movies ?? _movies,
      );

  List<Movies>? get movies => _movies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_movies != null) {
      map['movies'] = _movies?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Movies moviesFromJson(String str) => Movies.fromJson(json.decode(str));

String moviesToJson(Movies data) => json.encode(data.toJson());

class Movies {
  Movies({
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runtime,
    String? genre,
    String? director,
    String? writer,
    String? actors,
    String? plot,
    String? language,
    String? country,
    String? awards,
    String? poster,
    List<Ratings>? ratings,
    String? metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? type,
    String? dvd,
    String? boxOffice,
    String? production,
    String? website,
    String? response,
  }) {
    _title = title;
    _year = year;
    _rated = rated;
    _released = released;
    _runtime = runtime;
    _genre = genre;
    _director = director;
    _writer = writer;
    _actors = actors;
    _plot = plot;
    _language = language;
    _country = country;
    _awards = awards;
    _poster = poster;
    _ratings = ratings;
    _metascore = metascore;
    _imdbRating = imdbRating;
    _imdbVotes = imdbVotes;
    _imdbID = imdbID;
    _type = type;
    _dvd = dvd;
    _boxOffice = boxOffice;
    _production = production;
    _website = website;
    _response = response;
  }

  Movies.fromJson(dynamic json) {
    _title = json['Title'];
    _year = json['Year'];
    _rated = json['Rated'];
    _released = json['Released'];
    _runtime = json['Runtime'];
    _genre = json['Genre'];
    _director = json['Director'];
    _writer = json['Writer'];
    _actors = json['Actors'];
    _plot = json['Plot'];
    _language = json['Language'];
    _country = json['Country'];
    _awards = json['Awards'];
    _poster = json['Poster'];
    if (json['Ratings'] != null) {
      _ratings = [];
      json['Ratings'].forEach((v) {
        _ratings?.add(Ratings.fromJson(v));
      });
    }
    _metascore = json['Metascore'];
    _imdbRating = json['imdbRating'];
    _imdbVotes = json['imdbVotes'];
    _imdbID = json['imdbID'];
    _type = json['Type'];
    _dvd = json['DVD'];
    _boxOffice = json['BoxOffice'];
    _production = json['Production'];
    _website = json['Website'];
    _response = json['Response'];
  }

  String? _title;
  String? _year;
  String? _rated;
  String? _released;
  String? _runtime;
  String? _genre;
  String? _director;
  String? _writer;
  String? _actors;
  String? _plot;
  String? _language;
  String? _country;
  String? _awards;
  String? _poster;
  List<Ratings>? _ratings;
  String? _metascore;
  String? _imdbRating;
  String? _imdbVotes;
  String? _imdbID;
  String? _type;
  String? _dvd;
  String? _boxOffice;
  String? _production;
  String? _website;
  String? _response;

  Movies copyWith({
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runtime,
    String? genre,
    String? director,
    String? writer,
    String? actors,
    String? plot,
    String? language,
    String? country,
    String? awards,
    String? poster,
    List<Ratings>? ratings,
    String? metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? type,
    String? dvd,
    String? boxOffice,
    String? production,
    String? website,
    String? response,
  }) =>
      Movies(
        title: title ?? _title,
        year: year ?? _year,
        rated: rated ?? _rated,
        released: released ?? _released,
        runtime: runtime ?? _runtime,
        genre: genre ?? _genre,
        director: director ?? _director,
        writer: writer ?? _writer,
        actors: actors ?? _actors,
        plot: plot ?? _plot,
        language: language ?? _language,
        country: country ?? _country,
        awards: awards ?? _awards,
        poster: poster ?? _poster,
        ratings: ratings ?? _ratings,
        metascore: metascore ?? _metascore,
        imdbRating: imdbRating ?? _imdbRating,
        imdbVotes: imdbVotes ?? _imdbVotes,
        imdbID: imdbID ?? _imdbID,
        type: type ?? _type,
        dvd: dvd ?? _dvd,
        boxOffice: boxOffice ?? _boxOffice,
        production: production ?? _production,
        website: website ?? _website,
        response: response ?? _response,
      );

  String? get title => _title;

  String? get year => _year;

  String? get rated => _rated;

  String? get released => _released;

  String? get runtime => _runtime;

  String? get genre => _genre;

  String? get director => _director;

  String? get writer => _writer;

  String? get actors => _actors;

  String? get plot => _plot;

  String? get language => _language;

  String? get country => _country;

  String? get awards => _awards;

  String? get poster => _poster;

  List<Ratings>? get ratings => _ratings;

  String? get metascore => _metascore;

  String? get imdbRating => _imdbRating;

  String? get imdbVotes => _imdbVotes;

  String? get imdbID => _imdbID;

  String? get type => _type;

  String? get dvd => _dvd;

  String? get boxOffice => _boxOffice;

  String? get production => _production;

  String? get website => _website;

  String? get response => _response;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Title'] = _title;
    map['Year'] = _year;
    map['Rated'] = _rated;
    map['Released'] = _released;
    map['Runtime'] = _runtime;
    map['Genre'] = _genre;
    map['Director'] = _director;
    map['Writer'] = _writer;
    map['Actors'] = _actors;
    map['Plot'] = _plot;
    map['Language'] = _language;
    map['Country'] = _country;
    map['Awards'] = _awards;
    map['Poster'] = _poster;
    if (_ratings != null) {
      map['Ratings'] = _ratings?.map((v) => v.toJson()).toList();
    }
    map['Metascore'] = _metascore;
    map['imdbRating'] = _imdbRating;
    map['imdbVotes'] = _imdbVotes;
    map['imdbID'] = _imdbID;
    map['Type'] = _type;
    map['DVD'] = _dvd;
    map['BoxOffice'] = _boxOffice;
    map['Production'] = _production;
    map['Website'] = _website;
    map['Response'] = _response;
    return map;
  }
}

Ratings ratingsFromJson(String str) => Ratings.fromJson(json.decode(str));

String ratingsToJson(Ratings data) => json.encode(data.toJson());

class Ratings {
  Ratings({
    String? source,
    String? value,
  }) {
    _source = source;
    _value = value;
  }

  Ratings.fromJson(dynamic json) {
    _source = json['Source'];
    _value = json['Value'];
  }

  String? _source;
  String? _value;

  Ratings copyWith({
    String? source,
    String? value,
  }) =>
      Ratings(
        source: source ?? _source,
        value: value ?? _value,
      );

  String? get source => _source;

  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Source'] = _source;
    map['Value'] = _value;
    return map;
  }
}