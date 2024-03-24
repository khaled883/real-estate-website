import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Clients Recommendations',
            style: Theme.of(context).textTheme.headline6,),
          ),
      
          SizedBox(height: 20,),
          SingleChildScrollView(
            
            scrollDirection: Axis.horizontal,
            
      
            child: Row(
              children: 
                List.generate(
                demoRecommendations.length, 
                (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RecommendationCard(recommendation: demoRecommendations[index],),
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 350 ,
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(recommendation.text!,
            style: TextStyle(height: 1.5),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
        
      ),
    );
  }
}