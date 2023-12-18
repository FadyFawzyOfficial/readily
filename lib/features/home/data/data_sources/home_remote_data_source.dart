import '../../../../core/constants/strings.dart';
import '../../../../core/services/api_service.dart';
import '../../../../core/utils/functions/cache_data.dart';
import '../../domain/entities/book_entity.dart';
import '../models/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    final data = await apiService.get(
        endPoint: 'volumes?filtering=free-ebooks&q=programming');
    final List<BookEntity> books =
        List.from(data['items'].map((book) => BookModel.fromMap(book)));
    cacheBooks(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    final data = await apiService.get(
        endPoint: 'volumes?filtering=free-ebooks&q=programming&sorting=newest');
    final List<BookEntity> books =
        List.from(data['items'].map((book) => BookModel.fromMap(book)));
    cacheBooks(books, kNewestBox);
    return books;
  }
}
