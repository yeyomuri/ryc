import 'package:flutter/material.dart';
import 'package:ryc/mobile/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/mobile/widgets/signature_logo.dart';

class TermsConditionsMobile extends StatelessWidget {
  const TermsConditionsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widtScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 40, horizontal: widtScreen * 0.2),
        child: ListView(
          children: const [
            SetButtonAppbarMobile(),
            SizedBox(
              height: 40,
            ),
            /**
             * 
             * 
             * Agregar información a SignatureLogo()
             */
            SignatureLogoMobile(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
