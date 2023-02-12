import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/icon_social_media.dart';

class SetIconSocialMediaDesktop extends StatelessWidget {
  const SetIconSocialMediaDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconSocialMediaDesktop(icon: LineIcons.whatSApp),
        IconSocialMediaDesktop(icon: LineIcons.facebook),
        IconSocialMediaDesktop(icon: LineIcons.instagram),
        IconSocialMediaDesktop(icon: LineIcons.phone),
        IconSocialMediaDesktop(icon: Icons.mail_outline),
      ],
    );
  }
}
