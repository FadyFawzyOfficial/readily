import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String author;
  @HiveField(4)
  final num rating;
  @HiveField(5)
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
