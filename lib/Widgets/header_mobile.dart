import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onMenuTap, this.onLogoTap});

  final VoidCallback? onMenuTap;
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SiteLogo(

          ),
          Spacer(),
          IconButton(onPressed: onMenuTap,
              icon: Icon(Icons.menu)
          ),
          SizedBox(height: 15),

        ],
      ),

    );
  }
}
