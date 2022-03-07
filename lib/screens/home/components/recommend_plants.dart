import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/details_screen.dart';
import '../../../constants.dart';


class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_1.png",
            price: 440,
            title: "Cactus",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_2.png",
            price: 540,
            title: "Angela",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            country: "Russia",
            image: "assets/images/image_3.png",
            price: 340,
            title: "Lisa",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String? image, title, country;
  final int? price;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image.toString()),
        GestureDetector(
          onTap: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));},
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23))
              ],
            ),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                ])),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
