import 'package:hive/hive.dart';

import '../../../features/home/domain/entities/book_entity.dart';

void cacheBooks(List<BookEntity> books, String boxName) =>
    Hive.box(boxName).addAll(books);
