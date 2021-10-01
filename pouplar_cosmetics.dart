import 'package:flutter/material.dart';
import 'package:gorare/widget1/popular_cosmetics_listview.dart';

import '../constants.dart';

class PopularCosmetics extends StatelessWidget {
const PopularCosmetics({
Key key,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
      color: mDarkBackgroundColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Text(
            'TRENDING',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        PopularCosmeticsListView(),
      ],
    ),
  );
}
}