import 'package:flutter/material.dart';
import 'package:ryc/model/product.dart';
import 'package:ryc/utils/constants.dart';

class SaleBoxCategory extends StatelessWidget {
  final Product product;
  const SaleBoxCategory({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (product.name == 'Cy-gor') {
            //Cy-gor
            Navigator.pushNamed(context, '/cygor');
          }
        },
        child: Expanded(
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
          ),
        ));
  }
}

// class SaleBoxCategory extends StatelessWidget {
//   final String title;
//   final String image;
//   const SaleBoxCategory({
//     super.key,
//     required this.title,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           if (title == product1) {
//             //Cy-gor
//             Navigator.pushNamed(context, '/cygor');
//           }
//         },
//         child: Expanded(
//           child: Container(
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: const Color.fromRGBO(28, 28, 30, 1),
//               //border: Border.all(color: Colors.white54),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Flexible(
//                   flex: 4,
//                   child: Image.asset(
//                     image,
//                   ),
//                 ),
//                 //const SizedBox(height: 20),
//                 Flexible(
//                   flex: 1,
//                   child: Text(
//                     title,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
