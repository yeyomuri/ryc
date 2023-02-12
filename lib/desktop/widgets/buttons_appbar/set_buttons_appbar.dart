import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/buttons_appbar/button_appbar.dart';

class SetButtonAppbarDesktop extends StatelessWidget {
  const SetButtonAppbarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ButtonAppbarDesktop(title: 'Productos', route: '/'),
        ButtonAppbarDesktop(title: 'Bonus', route: '/bonus'),
        ButtonAppbarDesktop(
            title: 'Terminos y Condiciones', route: '/termsConditions'),
        ButtonAppbarDesktop(title: 'Contacto', route: '/contact'),
      ],
    );
  }
}
