import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/sale_box/product_box.dart';
import 'package:ryc/model/product.dart';

class MenuSalesDesktop extends StatelessWidget {
  const MenuSalesDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 50,
        crossAxisSpacing: 50,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return ProductBox(product: productList[index]);
      },
    );
  }
}
