import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/screens/home_screen.dart';
import 'package:real_estate_app/widgets/main_section.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),//to enable horizontal scrolling for the recommendations section

      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.white).copyWith(
          bodyLarge: TextStyle(color: kBodyTextColor),
          bodyMedium: TextStyle(color: kBodyTextColor),
        ),

      ),
      // ignore: prefer_const_constructors
      home: MainSection(),
    );
  }
}


//to enable the horizontal scrolling for the recommendations section >>>>>>>>>>>>>>>>
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
  };
}
