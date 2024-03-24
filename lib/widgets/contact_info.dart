import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(
          title: 'Adress', adress: 'Wall Street block 7',
        ),
        buildContactInfo(
          title: 'Country', adress: 'Egypt',
        ),
        buildContactInfo(
          title: 'Phone', adress: '+20 1212656628',
        ),
        buildContactInfo(
          title: 'E-mail', adress: 'khaled@gmail.com',
        ),
        buildContactInfo(
          title: 'Website', adress: 'myWebsite.com',
        ),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String adress}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 0,left: 15,right: 15,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
            style: TextStyle(color: Colors.white),),
            Text(adress),
          ],
        ),
      );
  }
}