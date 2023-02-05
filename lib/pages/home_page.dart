import 'package:flutter/material.dart';
import 'package:ryc/widgets/button_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
            // const SizedBox(
            //   height: 40,
            // ),
            // GridView.count(
            //   crossAxisCount: 2,
            //   children: const [
            //     Placeholder(),
            //     Placeholder(),
            //     Placeholder(),
            //     Placeholder(),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
