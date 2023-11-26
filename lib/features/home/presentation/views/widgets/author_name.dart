import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text('J.K. Rowling', style: TextStyle(color: Colors.grey)),
    );
  }
}
