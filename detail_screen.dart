import 'package:flutter/material.dart';
import 'package:gorare/constants.dart';
import 'Widget/content_intro.dart';
import 'Widget/my_header.dart';
class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              MyHeader(),
              Positioned(
                left: 0,
                  right: 0,
                  top: 290,
                  child: Column(
                    children: [
                      ContentIntro(),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height:56,
                            padding: EdgeInsets.symmetric(horizontal: 24,
                            ),
                            decoration: BoxDecoration(
                              color: mPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '\$650.30',
                                  style: TextStyle(
                                      fontSize: 16
                                  ),
                                ),
                                SizedBox(width: 24,),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                                  decoration: BoxDecoration(
                                    color: mBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text('Buy Now',style: TextStyle(
                                      color: Colors.black54,
                                    fontSize: 16,
                                  ),),
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                Container(
                                  width: 56,
                                  height: 56,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset('assets/images/bag.png'),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
    );
  }
}

