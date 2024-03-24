// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: unused_import
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/widgets/contact_info.dart';
import 'package:real_estate_app/widgets/goals.dart';
import 'package:real_estate_app/widgets/logo.dart';
class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBgColor,//so the side menu appears colorless
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Logo(),//A separated file shows how the logo and title look like
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ContactInfo(),
                      Divider(),
                      Goals(),
                      Divider(),
                      SizedBox(height: 15,),
                      TextButton(onPressed: (){}, 
                      child: FittedBox(child: 
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/download.svg'),
                          SizedBox(width: 10,),
                          Text('Download Brochure',
                           style:TextStyle(color:  Theme.of(context).textTheme.bodyText1!.color),
                          ),
                        ],
                      ),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                                ),
                                IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset('assets/icons/github.svg'),
                                ),
                                IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset('assets/icons/twitter.svg'),
                                ),
                                IconButton(
                                onPressed: (){}, 
                                icon: SvgPicture.asset('assets/icons/dribble.svg'),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

