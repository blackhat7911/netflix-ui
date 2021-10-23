class Cinema {
  final String title;
  final String imageUrl;
  final List<String> time;
  Cinema({required this.title, required this.imageUrl, required this.time});
  static fetchAll() {
    return [
      Cinema(
          title: "Speeder",
          imageUrl:
              "https://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/embed/public/2019/04/08/avengersendgame-poster.jpg",
          time: ["11:00", "12:50", "2:30"]),
      Cinema(
          title: "Slower",
          imageUrl:
              "https://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/embed/public/2019/04/08/avengersendgame-poster.jpg",
          time: ["11:00", "12:50", "3:30"]),
      Cinema(
          title: "Hululu",
          imageUrl:
              "https://s1.ibtimes.com/sites/www.ibtimes.com/files/styles/embed/public/2019/04/08/avengersendgame-poster.jpg",
          time: ["11:00", "1:50", "2:30"]),
    ];
  }
}
