import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        dotenv.env['API_KEY'] ?? 'Error',
      ),
    );
  }
}
