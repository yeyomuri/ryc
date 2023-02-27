import 'package:flutter/material.dart';
import 'package:ryc/model/category.dart';
import 'package:ryc/pages/desktop/specification.dart';
import 'package:ryc/responsive/responsive_layout.dart';
import 'package:ryc/white_page.dart';

class Specification extends StatelessWidget {
  const Specification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: const WhitePage(),
        desktopBody: SpecificationDesktop(
          product: product,
        ),
      ),
    );
  }
}
