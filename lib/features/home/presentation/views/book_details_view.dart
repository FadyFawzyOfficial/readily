import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/styles.dart';
import 'widgets/book_image.dart';
import 'widgets/book_rate.dart';
import 'widgets/book_toggle_button.dart';
import 'widgets/featured_list_view.dart';

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
          Expanded(
            flex: 71,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 124, vertical: 16),
                  child: BookImage(),
                ),
                Text('A Million To one', style: ts30Bold),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('Fady Fawzy', style: ts20BoldItalicGrey),
                ),
                BookRate(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 48),
                  child: BookToggleButton(),
                ),
              ],
            ),
          ),
          // Similar Books Section
          Expanded(
            flex: 29,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'You may also like:',
                    style: ts18SemiBold,
                  ),
                ),
                Expanded(child: FeaturedListView()),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
