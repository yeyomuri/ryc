import 'package:flutter/material.dart';

class SignatureLogoDesktop extends StatelessWidget {
  const SignatureLogoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white54),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text('Firma y logo'),
      ),
    );
  }
}
