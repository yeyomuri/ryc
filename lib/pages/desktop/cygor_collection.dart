import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';
import 'package:ryc/pages/set_sales.dart';

class CollectionDesktop extends StatelessWidget {
  final String nameProduct;
  const CollectionDesktop({super.key, required this.nameProduct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * 0.2),
      child: ListView(
        children: [
          const SetButtonAppbarDesktop(),
          const Divider(color: Colors.white),
          const SizedBox(
            height: 50,
          ),
          /**
           * 
           * 
           * Agregar información a SignatureLogo()
           */
          const SignatureLogoDesktop(),
          const SizedBox(height: 50),
          const Divider(color: Colors.white),
          const SizedBox(height: 20),
          Text(nameProduct,
              style: const TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
          const Divider(color: Colors.white),
          const SizedBox(height: 50),
          SetSales(nameProduct: nameProduct),
          const SizedBox(
            height: 80,
          ),
          const Divider(color: Colors.white),
          const SizedBox(
            height: 40,
          ),
          const SetIconSocialMediaDesktop()
        ],
      ),
    );
  }
}
