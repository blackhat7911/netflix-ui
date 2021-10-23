class PopularMovie {
  final String imageUrl;
  final String length;
  PopularMovie({required this.imageUrl, required this.length});

  static fetchAll() {
    return [
      PopularMovie(
          imageUrl:
              "https://mir-s3-cdn-cf.behance.net/project_modules/1400/61da8438155793.57575971afe13.jpg",
          length: "3.23"),
      PopularMovie(
          imageUrl:
              "https://assets1.ignimgs.com/2020/02/24/pixar-movies-rotten-tomatoes-1582587148264.jpg?width=1280",
          length: "4.23"),
      PopularMovie(
          imageUrl:
              "https://mtb-law.co.uk/wp-content/uploads/2017/05/MIB-1.jpg",
          length: "5.23"),
    ];
  }
}
