import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/set_buttons_appbar.dart';
import 'package:ryc/desktop/widgets/icon_social_media.dart/set_icon_social_meida.dart';
import 'package:ryc/desktop/widgets/signature_logo.dart';
import 'package:ryc/provider/image_specification.dart';
import 'package:ryc/model/category.dart';

class SpecificationDesktop extends StatelessWidget {
  final Category product;
  const SpecificationDesktop({super.key, required this.product});

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
          const Text('Nombre del producto',
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
          const Divider(color: Colors.white),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  RichText(
                    text: const TextSpan(
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
                    minWidth: MediaQuery.of(context).size.width * 0.2,
                    color: const Color.fromRGBO(28, 28, 30, 1),
                    shape: const StadiumBorder(),
                    elevation: 0,
                    splashColor: Colors.transparent,
                    child: const Text(
                      'Realizar Pedido',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
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
                  Image.asset(product
                      .imageList[context.watch<ImageSpecification>().value]),
                  IconButton(
                    splashColor: Colors.black.withOpacity(1),
                    highlightColor: Colors.black.withOpacity(1),
                    onPressed: () => context.read<ImageSpecification>().right(),
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
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
