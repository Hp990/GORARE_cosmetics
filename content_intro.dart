import 'package:flutter/material.dart';
import 'package:gorare/widget/rating_bar.dart';

import '../../../constants.dart';

class ContentIntro extends StatelessWidget {
  const ContentIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      decoration: BoxDecoration(
        color: mDarkBackgroundColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Makeup Beauty Products',
            style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold
            ),
          ),
          Text('Cosmetics designed for skin care can be used to cleanse, '
              'exfoliate and protect the skin, as well as replenishing it, '
              'through the use of cleansers, toners, serums, moisturizers, and balms. '
              'Cosmetics designed for more general personal care, such as shampoo and body wash, '
              'can be used to cleanse the body.',
            style: TextStyle(
              height: 1.8,
              color: Colors.white54,

            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Deepika Padukone',
            style:TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ) ,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            '30 August 2021',
            style:TextStyle(
              color: Colors.white54,
              fontSize: 18,
            ) ,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RatingBar(onRatingUpdate: (value){},
                maxRating: 5,
                size:18,
                value: 4.8,
                selectColor: mPrimaryColor,
              ),
              Text(
                '4.8',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              Text(
                '/5.0',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: mPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset('assets/images/share.png'),
              ),
              SizedBox(
                width:48 ,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset('assets/images/mark.png'),
              ),
              SizedBox(
                width:48 ,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset('assets/images/star.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

