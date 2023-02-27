import 'package:flutter/material.dart';
import 'package:ryc/model/product.dart';
import 'package:ryc/utils/constants.dart';

class ProductBox extends StatelessWidget {
  final Product product;
  const ProductBox({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (product.name == ProductName.cygor) {
            Navigator.pushNamed(context, '/collection',
                arguments: ProductName.cygor);
          } else if (product.name == ProductName.alien) {
            Navigator.pushNamed(context, '/collection',
                arguments: ProductName.alien);
          } else if (product.name == ProductName.littleMice) {
            Navigator.pushNamed(context, '/collection',
                arguments: ProductName.littleMice);
          } else if (product.name == ProductName.gecko) {
            Navigator.pushNamed(context, '/collection',
                arguments: ProductName.gecko);
          }
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(28, 28, 30, 1),
            //border: Border.all(color: Colors.white54),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 4,
                child: Image.asset(
                  product.image,
                ),
              ),
              //const SizedBox(height: 20),
              Flexible(
                flex: 1,
                child: Text(
                  product.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
