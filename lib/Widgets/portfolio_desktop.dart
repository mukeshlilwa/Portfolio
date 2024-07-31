import 'package:flutter/material.dart';
import 'package:portfolio/Styles/style.dart';
import 'package:portfolio/Widgets/site_logo.dart';

import '../Constants/colors.dart';
import '../Constants/nav_titles.dart';

class PortfolioDesktop extends StatelessWidget {
  const PortfolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(),

          Spacer(),

          for(int i=0 ; i < navTitles.length ; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(onPressed: (){

              },
                  child: Text(navTitles[i], style: TextStyle(
                      color: CustomColor.WhitePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),)
              ),
            )
        ],
      ),
    );
  }
}
