import 'package:animal_planet_app_ui/common/custom_app_bar.dart';
import 'package:animal_planet_app_ui/common/subscription_container.dart';
import 'package:animal_planet_app_ui/screens/dashboard_screen.dart';
import 'package:animal_planet_app_ui/utils/strings.dart';
import 'package:animal_planet_app_ui/utils/text_styles.dart';
import 'package:flutter/material.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children:<Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:24,horizontal: 16),
                child: Text(
                  Strings.chooseAPlan,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                text: Strings.weekSubscription,
                anount: "1.99",
                imagePath: "assets/weekly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.oneMonthSubscription,
                anount: "4.39",
                imagePath: "assets/monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.threeMonthSubscription,
                anount: "9.99",
                imagePath: "assets/3monthly.jpg",
              ),
              SubscriptionContainer(
                text: Strings.sizMonthSubscription,
                anount: "13",
                imagePath: "assets/6monthly.jpg",
              ),
            ],
          ),
          Positioned(
              bottom: 40,
              left: 16,
            child: Text(
              Strings.LAST_STEP_TO_ENJOY,
              style: TextStyles.buttomTextStyle,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context)=>DashboardSrceen(),
                ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDAD4CC).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4,-0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
