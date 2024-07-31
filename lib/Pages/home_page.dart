import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/Constants/colors.dart';
import 'package:portfolio/Constants/nav_icons.dart';
import 'package:portfolio/Constants/nav_titles.dart';
import 'package:portfolio/Widgets/drawe_mobile.dart';
import 'package:portfolio/Widgets/header_mobile.dart';

import '../Widgets/portfolio_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: constraints.maxWidth >= 600? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if(constraints.maxWidth >= 600)
              PortfolioDesktop()

              else
              HeaderMobile(
                onMenuTap: (){
                  ScaffoldKey.currentState?.openEndDrawer();

                },
              ),
              //PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blue,
              ),
              //SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.grey,
              ),

              //CONTACTS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.cyan,
              ),

              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.indigo,
              ),


            ],
          )
        );
      }
    );
  }
}
