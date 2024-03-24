// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:real_estate_app/models/recommendation.dart';
import 'package:real_estate_app/screens/home_screen.dart';
import 'package:real_estate_app/widgets/home_banner.dart';
import 'package:real_estate_app/widgets/icon_info.dart';
import 'package:real_estate_app/widgets/projects.dart';
import 'package:real_estate_app/widgets/recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),

      );
  }
}