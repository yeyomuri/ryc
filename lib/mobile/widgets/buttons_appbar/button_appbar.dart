import 'package:flutter/material.dart';

class ButtonAppbarMobile extends StatelessWidget {
  final String title;
  final String route;
  const ButtonAppbarMobile({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
