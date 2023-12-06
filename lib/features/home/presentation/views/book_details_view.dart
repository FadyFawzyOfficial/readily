import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/book/volume_info.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  static const name = '/bookDetails';

  final VolumeInfo bookInfo;

  const BookDetailsView({super.key, required this.bookInfo});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.pop,
          icon: const Icon(Icons.close_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
      body: BookDetailsViewBody(
        bookInfo: bookInfo,
      ),
    );
  }
}
