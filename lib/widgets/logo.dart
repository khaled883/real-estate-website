import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Image(image: AssetImage('assets/images/logo (1).png'),
            width: 100,),
            Spacer(),
            Text('Real Estate',
            style: Theme.of(context).textTheme.subtitle2,
            ),
            Text('Buy your house with\n modern interior design',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
            ),
            Spacer()
          ],
        ),
      ),
      );
  }
}