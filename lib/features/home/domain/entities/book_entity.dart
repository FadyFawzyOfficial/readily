class BookEntity {
  final String id;
  final String image;
  final String title;
  final String author;
  final num rating;
  final int ratingCount;

  BookEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.ratingCount,
  });
}
