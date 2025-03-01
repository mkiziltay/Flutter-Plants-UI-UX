import 'package:flutter/material.dart';
import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    this.price,
    this.title,
    this.country,
  }) : super(key: key);

  final int? price;
  final String? title, country;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "$country",
                  style: const TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300))
            ]),
          ),
          const Spacer(),
          Text("\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: kPrimaryColor))
        ],
      ),
    );
  }
}
