import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 2.65),
      child: SizedBox(
        height: size.height * 0.79,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: <Widget>[SizedBox(height: size.height*0.01,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: IconButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              height: size.height * 0.63,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bottom_img_2.png"))),
            )
          ],
        ),
      ),
    );
  }
}
