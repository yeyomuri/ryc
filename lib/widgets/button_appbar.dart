import 'package:flutter/material.dart';

class ButtonAppbar extends StatelessWidget {
  final String title;
  const ButtonAppbar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
