import 'package:flutter/material.dart';

class IconSocialMediaMobile extends StatelessWidget {
  final IconData icon;
  const IconSocialMediaMobile({
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
