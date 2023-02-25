import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/sale_box/sale_box.dart';
import 'package:ryc/model/product.dart';
import 'package:ryc/utils/constants.dart';

class MenuSalesDesktop extends StatelessWidget {
  const MenuSalesDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        //physics:
        //const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
        //shrinkWrap: true, // You won't see infinite size error
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
        ),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return SaleBoxCategory(product: productList[index]);
        },
      ),
    );
    // return GridView.count(
    //   physics:
    //       const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
    //   shrinkWrap: true, // You won't see infinite size error

    //   crossAxisCount: 2,
    //   crossAxisSpacing: 50,
    //   mainAxisSpacing: 50,
    //   children: const [
    //     SaleBoxCategory(
    //       title: product1,
    //       image: 'assets/1.png',
    //     ),
    //     SaleBoxCategory(
    //       title: product2,
    //       image: 'assets/1.png',
    //     ),
    //     SaleBoxCategory(
    //       title: product3,
    //       image: 'assets/1.png',
    //     ),
    //     SaleBoxCategory(
    //       title: product4,
    //       image: 'assets/1.png',
    //     ),
    //   ],
    // );
  }
}
