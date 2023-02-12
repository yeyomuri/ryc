import 'package:flutter/material.dart';

class SaleBoxDesktop extends StatelessWidget {
  final String title;
  final String image;
  const SaleBoxDesktop({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        Expanded(
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(image)),
        )
      ],
    );
  }
}
