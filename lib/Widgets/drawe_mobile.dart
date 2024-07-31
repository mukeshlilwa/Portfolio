import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/nav_icons.dart';
import '../Constants/nav_titles.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.ScaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(onPressed: (){
                Navigator.pop(context);

              },
                  icon: Icon(Icons.close)
              ),
            ),
          ),
          for(int i=0 ; i<navIcons.length; i++ )
            ListTile(
              titleTextStyle: TextStyle(
                color: CustomColor.WhitePrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,

              ),
              leadingAndTrailingTextStyle: TextStyle(
                  color: CustomColor.WhitePrimary
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
