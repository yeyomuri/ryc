import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/sale_box/sale_box.dart';

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
        SaleBoxDesktop(
          title: 'Cy-gor',
          image: 'assets/1.jpg',
        ),
        SaleBoxDesktop(
          title: 'Gecko',
          image: 'assets/2.jpg',
        ),
        SaleBoxDesktop(
          title: 'Litte mice',
          image: 'assets/3.jpg',
        ),
        SaleBoxDesktop(
          title: 'alien',
          image: 'assets/4.jpg',
        ),
      ],
    );
  }
}
