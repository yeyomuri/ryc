import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ryc/mobile/widgets/icon_social_media.dart/icon_social_media.dart';

class SetIconSocialMediaMobile extends StatelessWidget {
  const SetIconSocialMediaMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        IconSocialMediaMobile(icon: LineIcons.whatSApp),
        IconSocialMediaMobile(icon: LineIcons.facebook),
        IconSocialMediaMobile(icon: LineIcons.instagram),
        IconSocialMediaMobile(icon: LineIcons.phone),
        IconSocialMediaMobile(icon: Icons.mail_outline),
      ],
    );
  }
}
