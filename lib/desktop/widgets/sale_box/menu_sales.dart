import 'package:flutter/material.dart';
import 'package:ryc/desktop/widgets/sale_box/sale_box.dart';
import 'package:ryc/model/product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuSalesDesktop extends StatelessWidget {
  const MenuSalesDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      itemCount: productList.length + 1,
      itemBuilder: (context, index) =>
          SaleBoxCategory(product: productList[index]),
    );
  }
}
