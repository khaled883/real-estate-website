import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      child: Responsive.isMobileLarge(context) ?
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: IconInfoBuilder(
                  context: context,
                  icon: Icons.supervisor_account,
                  num: '67+',
                  lable: 'Clients'
                  ),
              ),
                Expanded(
                  child: IconInfoBuilder(
                  context: context,
                  icon: Icons.location_on,
                  num: '139k',
                  lable: 'Projects'
                  ),
                ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: IconInfoBuilder(
                  context: context,
                  icon: Icons.public,
                  num: '30+',
                  lable: 'Sountries'
                  ),
              ),
                Expanded(
                  child: IconInfoBuilder(
                  context: context,
                  icon: Icons.star,
                  num: '30+',
                  lable: 'Stars'
                  ),
                ),],
          )
        ],
      ) 

      :
      
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconInfoBuilder(
            context: context,
            icon: Icons.supervisor_account,
            num: '67+',
            lable: 'Clients'
            ),
            IconInfoBuilder(
            context: context,
            icon: Icons.location_on,
            num: '139k',
            lable: 'Projects'
            ),
            IconInfoBuilder(
            context: context,
            icon: Icons.public,
            num: '30+',
            lable: 'Sountries'
            ),
            IconInfoBuilder(
            context: context,
            icon: Icons.star,
            num: '30+',
            lable: 'Stars'
            ),
        ],
      ),
    );
  }

  Column IconInfoBuilder({
    required BuildContext context,
    required IconData icon,
    required String num,
    required String lable,
  }) {
    return Column(
        children: [
          Icon(icon,size: 50,),
          SizedBox(height: 10,),
          Text(num,
          style: Theme.of(context).textTheme.headline6!
          .copyWith(color: kPrimaryColor,
          fontSize: 30,
          ),),
          Text(lable ,style: Theme.of(context).textTheme.subtitle2,),

        ],
      );
  }
}