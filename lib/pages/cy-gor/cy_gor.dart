import 'package:flutter/material.dart';
import 'package:ryc/pages/cy-gor/cy_gor_collection_desktop.dart';
import 'package:ryc/pages/cy-gor/cy_gor_collection_mobile.dart';
import 'package:ryc/pages/cy-gor/responsive_layout.dart';

class CyGor extends StatelessWidget {
  const CyGor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayoutCyGor(
        mobileBody: CyGorCollectionMobile(),
        desktopBody: CyGorCollectionDesktop(),
      ),
    );
  }
}
