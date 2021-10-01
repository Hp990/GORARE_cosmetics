import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyActionBar extends StatelessWidget {
  const MyActionBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/menu1.png',
              color: mDarkBackgroundColor,
              width: 24,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/cart.png',
              color: mDarkBackgroundColor,
              width: 24,
            ),
            onPressed: (){},
          )
        ],
      ),);
  }
}