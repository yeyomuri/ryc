import 'package:flutter/material.dart';
import 'package:ryc/mobile/widgets/sale_box/sale_box.dart';

class MenuSalesMobile extends StatelessWidget {
  const MenuSalesMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:
          const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infinite size error

      crossAxisCount: 1,
      crossAxisSpacing: 50,
      mainAxisSpacing: 50,
      children: const [
        SaleBoxMobile(
          title: 'Exhibiciones',
          image: 'assets/1.jpg',
        ),
        SaleBoxMobile(
          title: 'ArtToys',
          image: 'assets/2.jpg',
        ),
        SaleBoxMobile(
          title: 'Bitacora',
          image: 'assets/3.jpg',
        ),
        SaleBoxMobile(
          title: 'Articulados',
          image: 'assets/4.jpg',
        ),
      ],
    );
  }
}
