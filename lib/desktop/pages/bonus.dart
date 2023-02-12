import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';

class BonusDesktop extends StatelessWidget {
  const BonusDesktop({
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
            SetButtonAppbarDesktop(),
            SizedBox(
              height: 40,
            ),
            /**
             * 
             * 
             * Agregar información a SignatureLogo()
             */
            SignatureLogoDesktop(),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
