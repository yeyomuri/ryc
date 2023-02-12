import 'package:flutter/material.dart';

class IconSocialMediaDesktop extends StatelessWidget {
  final IconData icon;
  const IconSocialMediaDesktop({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 50,
    );
  }
}
