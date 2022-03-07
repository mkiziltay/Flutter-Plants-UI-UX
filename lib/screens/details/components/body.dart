import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angela",
            country: "Russia",
            price: 440,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 48,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                  child: FlatButton(
                onPressed: () {},
                child: Text("Description"),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
