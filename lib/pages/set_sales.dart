import 'package:flutter/material.dart';
import 'package:ryc/model/category.dart';
import 'package:ryc/pages/desktop/category_collection.dart';
import 'package:ryc/utils/constants.dart';

class SetSales extends StatelessWidget {
  final String nameProduct;
  const SetSales({
    super.key,
    required this.nameProduct,
  });

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = [];

    if (nameProduct == ProductName.cygor) {
      categoryList = cygorList;
    } else if (nameProduct == ProductName.gecko) {
      categoryList = geckoList;
    } else if (nameProduct == ProductName.alien) {
      categoryList = alienList;
    } else if (nameProduct == ProductName.littleMice) {
      categoryList = littleMiceList;
    }

    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 50,
        crossAxisSpacing: 50,
      ),
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        return CategoryCollection(product: categoryList[index]);
      },
    );
  }
}
