import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  final String name;

  const AuthorName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(name, style: const TextStyle(color: Colors.grey)),
    );
  }
}
