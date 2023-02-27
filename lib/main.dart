import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ryc/desktop/pages/bonus.dart';
import 'package:ryc/desktop/pages/contact.dart';
import 'package:ryc/desktop/pages/terms_conditions.dart';
import 'package:ryc/responsive/pages/collection.dart';
import 'package:ryc/pages/desktop/specification.dart';
import 'package:ryc/responsive/pages/home_page.dart';
import 'package:ryc/mobile/pages/bonus.dart';
import 'package:ryc/mobile/pages/contact.dart';
import 'package:ryc/mobile/pages/terms_conditions.dart';
import 'package:ryc/provider/image_specification.dart';
import 'package:ryc/pages/desktop/desktop_body.dart';
import 'package:ryc/responsive/mobile_body.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ImageSpecification()),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => const HomePage(),
          '/productsCategory': (context) => const Specication(),
          '/collection': (context) => const Collection(),
          '/specification': (context) => const Specication(),
          '/homeDesktop': (context) => const MyDesktopBody(),
          '/productsCategoryDesktop': (context) => const MyDesktopBody(),
          '/bonusDesktop': (context) => const BonusDesktop(),
          '/termsConditionsDesktop': (context) =>
              const TermsConditionsDesktop(),
          '/contactDesktop': (context) => const ContactDesktop(),
          '/homeMobile': (context) => const MyMobileBody(),
          '/bonusMobile': (context) => const BonusMobile(),
          '/termsConditionsMobile': (context) => const TermsConditionsMobile(),
          '/contactMobile': (context) => const ContactMobile(),
        },
        initialRoute: '/',
        theme: ThemeData(
          primaryColor: Colors.white,
          shadowColor: Colors.white,
          textTheme: GoogleFonts.openSansCondensedTextTheme(),
          scaffoldBackgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
