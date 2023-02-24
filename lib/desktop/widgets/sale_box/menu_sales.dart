import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/sale_box/sale_box.dart';
import 'package:ryc/utils/constants.dart';

class MenuSalesDesktop extends StatelessWidget {
  const MenuSalesDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:
          const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infinite size error

      crossAxisCount: 2,
      crossAxisSpacing: 50,
      mainAxisSpacing: 50,
      children: const [
        SaleBoxCategory(
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCategory(
          title: product2,
          image: 'assets/1.png',
        ),
        SaleBoxCategory(
          title: product3,
          image: 'assets/1.png',
        ),
        SaleBoxCategory(
          title: product4,
          image: 'assets/1.png',
        ),
      ],
    );
  }
}
