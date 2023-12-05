import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  static const name = '/bookDetails';
  const BookDetailsView({super.key});

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
      body: const BookDetailsViewBody(),
    );
  }
}
