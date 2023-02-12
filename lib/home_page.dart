import 'package:flutter/material.dart';
import 'package:ryc/responsive/desktop_body.dart';
import 'package:ryc/responsive/mobile_body.dart';
import 'package:ryc/responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobilBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
