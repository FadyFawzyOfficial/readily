import 'package:flutter/material.dart';
import 'package:readily/core/constants/styles.dart';
import 'package:readily/features/home/presentation/views/widgets/featured_list_item.dart';

import 'featured_list_view.dart';
import 'medium_title.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        const Expanded(
          flex: 3,
          child: FeaturedListView(),
        ),
        const Expanded(child: MediumTitle()),
        Expanded(
          flex: 6,
          child: ListView.separated(
            padding: const EdgeInsets.all(24),
            itemCount: 10,
            itemBuilder: (context, index) => const Row(
              children: [
                Expanded(child: FeaturedListItem()),
                SizedBox(width: 24),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Harry Potter and the Goblet of Fire',
                        style: ts20Normal,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'J.K. Rowling',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('19.99 €', style: ts16Bold)),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(Icons.star_rounded, color: Colors.yellow),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6),
                                  child: Text('4.8', style: ts16Medium),
                                ),
                                Text(
                                  '(2390)',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
          ),
        ),
      ],
    );
  }
}
