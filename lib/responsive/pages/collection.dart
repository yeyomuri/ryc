import 'package:flutter/material.dart';
import 'package:ryc/pages/desktop/cygor_collection.dart';
import 'package:ryc/responsive/responsive_layout.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    String nameProduct = ModalRoute.of(context)!.settings.arguments as String;
    //String nameProduct = ProductName.cygor;
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: CollectionDesktop(nameProduct: nameProduct),
        desktopBody: CollectionDesktop(nameProduct: nameProduct),
      ),
    );
  }
}
