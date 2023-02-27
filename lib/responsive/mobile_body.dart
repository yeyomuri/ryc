import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/desktop/widgets/sale_box/menu_sales.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
          SizedBox(height: 50),
          Divider(color: Colors.white),
          SizedBox(height: 20),
          Text('Productos',
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center),
          SizedBox(height: 20),
          Divider(color: Colors.white),
          SizedBox(height: 50),
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
