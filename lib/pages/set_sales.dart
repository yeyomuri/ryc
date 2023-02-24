import 'package:flutter/material.dart';
import 'package:ryc/pages/cy-gor/sale_box_collection.dart';
import 'package:ryc/responsive/dimensions.dart';
import 'package:ryc/utils/constants.dart';

class SetSales extends StatelessWidget {
  const SetSales({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width < mobileWidth ? 1 : 2;
    return GridView.count(
      physics:
          const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infinite size error
      crossAxisCount: width,
      crossAxisSpacing: 50,
      mainAxisSpacing: 50,
      children: const [
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
        SaleBoxCollection(
          price: '500.000',
          title: product1,
          image: 'assets/1.png',
        ),
      ],
    );
  }
}
