import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/strings.dart';
import '../../../search/presentation/views/search_view.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const name = '/home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage(kLogoImagePath),
          height: 24,
        ),
        actions: [
          IconButton(
            onPressed: () => context.push(SearchView.name),
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
