class Constants {
  static const String nowPlayingUrl = "/movie/now_playing";
  static const String genresUrl = "/genre/movie/list";
  static const String genreMoviesUrl = "/discover/movie";
  static const String trendingPersonsUrl = "/trending/person/week";
  static const String trendingMoviesUrl = "/trending/movie/day";

  static const String movieDetailsUrl = "/movie_details/";
  static const String movieVideosUrl = "/movie_videos/";
  static const String movieCreditsUrl = "/movie_credits/";
  static const String similarMoviesUrl = "/similar_movies/";

  static String getMovieDetailsUrl(int movieId) {
    return "/movie/" + movieId.toString();
  }

  static String getMovieVideosUrl(int movieId) {
    return "/movie/" + movieId.toString() + "/videos";
  }

  static String getMovieCreditsUrl(int movieId) {
    return "/movie/" + movieId.toString() + "/credits";
  }

  static String getSimilarMoviesUrl(int movieId) {
    return "/movie/" + movieId.toString() + "/similar";
  }
}