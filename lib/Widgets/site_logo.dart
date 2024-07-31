import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Text('MK', style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: CustomColor.YellowSecondary
      ),
      ),
    );
  }
}
