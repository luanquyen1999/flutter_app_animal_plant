import 'package:animal_planet_app_ui/utils/strings.dart';
import 'package:animal_planet_app_ui/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double opacity;

  const CustomAppBar({
    Key key,
    this.opacity  = 0.9
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Row(
          children:<Widget>[
            RichText(
                text: TextSpan(
                  children:[
                    TextSpan(
                      text: Strings.APP_NAME,
                      style: TextStyles.appNameTextStyyle,
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                        text: Strings.TAG_LINE,
                    style: TextStyles.tagLineTextStyle,
                    ),
                  ],
                ),
            ),
            Spacer(),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          ],
        ),
      ),
    );
  }
}
