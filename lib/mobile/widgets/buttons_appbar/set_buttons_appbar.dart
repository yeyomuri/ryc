import 'package:flutter/material.dart';
import 'package:ryc/mobile/widgets/buttons_appbar/button_appbar.dart';

class SetButtonAppbarMobile extends StatelessWidget {
  const SetButtonAppbarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ButtonAppbarMobile(title: 'Productos', route: '/'),
        ButtonAppbarMobile(title: 'Bonus', route: '/bonus'),
        ButtonAppbarMobile(title: 'Contacto', route: '/contact'),
      ],
    );
  }
}
