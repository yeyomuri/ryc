import 'package:flutter/material.dart';

class ButtonAppbarDesktop extends StatelessWidget {
  final String title;
  final String route;
  const ButtonAppbarDesktop({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      autofocus: true,
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
