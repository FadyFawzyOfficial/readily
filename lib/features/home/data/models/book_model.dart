import 'dart:convert';

import '../../domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  final String id;
  final String image;
  final String title;
  final String author;
  final num rating;
  final int ratingCount;

  BookModel({
    required this.id,
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.ratingCount,
  }) : super(
          id: id,
          image: image,
          title: title,
          author: author,
          rating: rating,
          ratingCount: 0,
        );

  BookModel copyWith({
    String? id,
    String? image,
    String? title,
    String? author,
    num? rating,
    int? ratingCount,
  }) {
    return BookModel(
      id: id ?? this.id,
      image: image ?? this.image,
      title: title ?? this.title,
      author: author ?? this.author,
      rating: rating ?? this.rating,
      ratingCount: ratingCount ?? this.ratingCount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'title': title,
      'author': author,
      'rating': rating,
      'ratingCount': ratingCount,
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      id: map['id'],
      image: map['volumeInfo']['imageLinks']['thumbnail'] ?? '',
      title: map['volumeInfo']['title'],
      author: map['volumeInfo']['authors'][0],
      rating: map['volumeInfo']['averageRating'],
      ratingCount: map['volumeInfo']['ratingsCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BookModel.fromJson(String source) =>
      BookModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'BookModel(id: $id, image: $image, title: $title, author: $author, rating: $rating, ratingCount: $ratingCount)';
}
