import 'package:animal_planet_app_ui/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {
  final String anount, text, imagePath;

  const SubscriptionContainer({
    Key key,
    this.anount,
    this.text,
    this.imagePath
  }) : super(key: key);@override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children:<Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.srcATop,
              ),
              child: Image.asset(
                imagePath,
              height: height*0.6/4,
              width: width-32,
              fit:  BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 0,
              right: 48,
              left: 48,
              bottom: 0,
              child: Row(
                children:<Widget>[
                  Text(
                  text, style: TextStyles.subscriptonTextStyle,
                ),
                  Spacer(),
                  Text(
                  "\$$anount" , style: TextStyles.subscriptonAmountTextStyle,
                ),
              ],
          ),
            ),
          ),
        ],
      ),
    );
  }
}
