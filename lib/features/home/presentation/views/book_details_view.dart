import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/styles.dart';
import 'widgets/book_image.dart';
import 'widgets/book_rate.dart';
import 'widgets/book_toggle_button.dart';

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
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 124),
            child: BookImage(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text('A Million To one', style: ts30Bold),
          ),
          Text('Fady Fawzy', style: ts20BoldItalicGrey),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: BookRate(),
          ),
          BookToggleButton(),
        ],
      ),
    );
  }
}
