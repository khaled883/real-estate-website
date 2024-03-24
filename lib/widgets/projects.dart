//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/projects.dart';
import 'package:real_estate_app/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Our Projects',
          style: Theme.of(context).textTheme.headline6,),
        ),
        Responsive(
        desktop: buildGridView(
          itemCount: demoProjects.length,
          crossAxisCount: 3,
          childRatio: 0.75,
          itemBuilder: (context, index)=> ProjectCard(project: demoProjects[index], lineCount: 5,),
        ),
        tablet: buildGridView(
          itemCount: demoProjects.length,
          crossAxisCount: 2, //MediaQuery.of(context).size.width < 900? 2 : 3,
          childRatio: 0.75,
          itemBuilder: (context, index)=> ProjectCard(project: demoProjects[index],lineCount: 3,),
        ),
        mobileLarge: buildGridView(
          itemCount: demoProjects.length,
          crossAxisCount: 2,
          childRatio: 0.75,
          itemBuilder: (context, index)=> ProjectCard(project: demoProjects[index],lineCount: 2,),
        ),
         mobile: buildGridView(
          itemCount: demoProjects.length,
          crossAxisCount: 1,
          childRatio: 0.75,
          itemBuilder: (context, index)=> ProjectCard(project: demoProjects[index],lineCount: 3,),
        ),

         ),
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxisCount,
    required double childRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      physics: ClampingScrollPhysics(),
      //scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: itemCount,//from consttructor
        gridDelegate: 
       SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: childRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20), 
      itemBuilder: itemBuilder,//generate projectCards from the list
      );
  }
}


class ProjectCard extends StatelessWidget {
   ProjectCard({
    super.key,
    required this.project,
    required this.lineCount,
  });
  final Project project;
  final int lineCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Image.asset(project.image!,
          fit: BoxFit.cover,
          ),
          SizedBox(height: 15,),
          Text(project.title!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height:15),
          Text(project.description!,
          overflow: TextOverflow.ellipsis,
           maxLines:lineCount,
          
          
          style: TextStyle(height: 1.5),//this height indicates the spaces between the text lines
          ),
          SizedBox(height: 15,),
          TextButton(onPressed: (){}, 
          child: Text('More info',style:TextStyle(color: kPrimaryColor),),),
        ],
      ),
    );
  }
}