import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/background.jpg',fit: BoxFit.cover,),
          Container(color: kDarkColor.withOpacity(0.10),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome \nto the future \nwhere the greatness is being built',
                style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.white,fontWeight: FontWeight.bold,):
                  Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 20,),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(onPressed: (){}, 
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    ),
                    child: Text('CONTACT US',
                    style: TextStyle(color: Colors.black),),),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}