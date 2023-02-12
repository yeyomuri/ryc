import 'package:flutter/material.dart';

class SignatureLogoMobile extends StatelessWidget {
  const SignatureLogoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text('Firma y logo'),
      ),
    );
  }
}
