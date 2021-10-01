import 'package:flutter/material.dart';
import 'package:gorare/widget/rating_bar.dart';

import '../constants.dart';
class PopularCosmeticsListView extends StatelessWidget {
  const PopularCosmeticsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: popularCosmeticsList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          width: 220,
          height: 310,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                (popularCosmeticsList
                as Map<String, dynamic>)['imageUrl'],
              ),
            ),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.white,
                mPrimaryColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  (popularCosmeticsList
                  as Map<String, dynamic>)['name'],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBar(
                  onRatingUpdate: (value) {},
                  selectColor: mDarkBackgroundColor,
                  maxRating: 5,
                  value: (popularCosmeticsList
                  as Map<String, dynamic>)['start'],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
