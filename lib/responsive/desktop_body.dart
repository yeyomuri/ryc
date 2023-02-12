import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/desktop/widgets/sale_box/menu_sales.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * 0.2),
      child: ListView(
        children: const [
          SetButtonAppbarDesktop(),
          Divider(color: Colors.white),
          SizedBox(
            height: 50,
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
          MenuSalesDesktop(),
          SizedBox(
            height: 80,
          ),
          Divider(color: Colors.white),
          SizedBox(
            height: 40,
          ),
          SetIconSocialMediaDesktop()
        ],
      ),
    );
  }
}
