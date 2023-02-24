import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';
import 'package:ryc/provider/image_specification.dart';

class SpecicationSale extends StatelessWidget {
  const SpecicationSale({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/8.jpg',
      'assets/9.jpg',
      'assets/10.jpg'
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 40, horizontal: MediaQuery.of(context).size.width * 0.2),
        child: ListView(
          children: [
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
            Text('Nombre del producto',
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            Divider(color: Colors.white),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        children: [
                          TextSpan(text: 'Nombre del producto\n'),
                          TextSpan(text: 'Precio\n'),
                          TextSpan(text: 'Especificaciones\n'),
                          TextSpan(text: 'Edición limitada\n'),
                          TextSpan(text: 'Medidas\n'),
                          TextSpan(text: 'Materiales\n'),
                          TextSpan(text: 'Peso\n'),
                          TextSpan(text: 'Hecho en Colombia\n'),
                          TextSpan(text: 'Total a pagar\n'),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Realizar Pedido',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      minWidth: MediaQuery.of(context).size.width * 0.2,
                      color: const Color.fromRGBO(28, 28, 30, 1),
                      shape: const StadiumBorder(),
                      elevation: 0,
                      splashColor: Colors.transparent,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        splashColor: Colors.black.withOpacity(1),
                        highlightColor: Colors.black.withOpacity(1),
                        onPressed: () =>
                            context.read<ImageSpecification>().left(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Image.asset(
                        imageList[context.watch<ImageSpecification>().value]),
                    IconButton(
                      splashColor: Colors.black.withOpacity(1),
                      highlightColor: Colors.black.withOpacity(1),
                      onPressed: () =>
                          context.read<ImageSpecification>().right(),
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
      ),
    );
  }
}
