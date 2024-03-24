import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Text('Goals',
            style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          buildGoals(goal: 'Planning Stages'),
          buildGoals(goal: 'Development'),
          buildGoals(goal: 'Execution phase'),
          buildGoals(goal: 'New style to live'),
        ],
      ),
    );
  }

  Padding buildGoals({required String goal}) {
    return Padding(
          padding: const EdgeInsets.only(left: 15,bottom: 10),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check.svg'),
              SizedBox(width: 15,),
              Text(goal),
            ],
          ),
        );
  }
}