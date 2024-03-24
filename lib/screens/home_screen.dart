// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widgets/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;//it will be passed as an input
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: Responsive.isDesktop(context) ? null
       :
       AppBar(
        backgroundColor: kBgColor,
        leading: Builder(builder: (context)=>IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }, 
        icon: Icon(Icons.menu),
        ),
        ),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                  ),
                Expanded(
                  flex: 7,
                  child: mainSection,// the main section part of the screeen>>>>>>>>
                  ),  
                ],
            ),
          ),
        ),
      ),
    );
  }
}