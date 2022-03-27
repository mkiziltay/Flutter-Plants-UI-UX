import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_buttonmore.dart';
import 'package:plant_app/constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It will provide us total height of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      //it enabling scrolling the screen
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithButtonMore(title: "Recommended", press: () {}),
          const RecommendsPlants(),
          TitleWithButtonMore(
            title: "Featured Plants",
            press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),//space bottom of FeaturedPlants
        ],
      ),
    );
  }
}
