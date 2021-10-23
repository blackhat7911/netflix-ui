class News {
  final String title;
  final String category;
  final String imageUrl;
  final String timeAgo;
  News({
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.timeAgo,
  });

  static fetchAll() {
    return [
      News(
        title: "Spiderman can't go home because there's no way home",
        category: "Movies",
        imageUrl:
            "https://images.hdqwalls.com/wallpapers/spiderman-2002-q0.jpg",
        timeAgo: "7 hours age",
      ),
      News(
        title: "Spiderman can't go home because there's no way home",
        category: "War",
        imageUrl:
            "https://images.hdqwalls.com/wallpapers/spiderman-2002-q0.jpg",
        timeAgo: "7 hours age",
      ),
      News(
        title: "Spiderman can't go home because there's no way home",
        category: "Law",
        imageUrl:
            "https://images.hdqwalls.com/wallpapers/spiderman-2002-q0.jpg",
        timeAgo: "7 hours age",
      ),
      News(
        title: "Spiderman can't go home because there's no way home",
        category: "Celebrity",
        imageUrl:
            "https://images.hdqwalls.com/wallpapers/spiderman-2002-q0.jpg",
        timeAgo: "7 hours age",
      ),
    ];
  }
}
