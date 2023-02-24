import 'package:flutter/material.dart';
import 'package:ryc/mobile/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/mobile/widgets/signature_logo.dart';
import 'package:ryc/pages/set_sales.dart';
import '../../mobile/widgets/buttons_appbar/set_buttons_appbar.dart';

class CyGorCollectionMobile extends StatelessWidget {
  const CyGorCollectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * 0.1),
      child: ListView(
        children: const [
          SetButtonAppbarMobile(),
          Divider(color: Colors.white),
          SizedBox(
            height: 50,
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
          SetSales(),
          SizedBox(
            height: 80,
          ),
          Divider(color: Colors.white),
          SizedBox(
            height: 40,
          ),
          Text('Mobile'),
          SetIconSocialMediaMobile()
        ],
      ),
    );
  }
}
