import 'package:flutter/material.dart';
import 'package:ryc/widgets/button_appbar.dart';
import 'package:ryc/widgets/sale_box.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widtScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 40, horizontal: widtScreen * 0.2),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ButtonAppbar(title: 'Exhibiciones'),
                ButtonAppbar(title: 'ArtToys'),
                ButtonAppbar(title: 'Bitacora'),
                ButtonAppbar(title: 'Articulados'),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            /**
             * 
             * 
             * Reemplazar
             */
            const Placeholder(
              fallbackWidth: double.infinity,
              fallbackHeight: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            GridView.count(
              physics:
                  const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true, // You won't see infinite size error
              crossAxisCount: 2,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              children: const [
                SaleBox(
                  title: 'Exhibiciones',
                  image: 'assets/1.jpg',
                ),
                SaleBox(
                  title: 'ArtToys',
                  image: 'assets/2.jpg',
                ),
                SaleBox(
                  title: 'Bitacora',
                  image: 'assets/3.jpg',
                ),
                SaleBox(
                  title: 'Articulados',
                  image: 'assets/4.jpg',
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Divider(color: Colors.white),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  LineIcons.whatSApp,
                  color: Colors.green,
                  size: 50,
                ),
                Icon(
                  color: Colors.blue,
                  LineIcons.facebook,
                  size: 50,
                ),
                Icon(
                  LineIcons.instagram,
                  color: Colors.orange,
                  size: 50,
                ),
                Icon(
                  LineIcons.phone,
                  color: Colors.white,
                  size: 50,
                ),
                Icon(
                  Icons.mail_outline,
                  color: Colors.redAccent,
                  size: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
