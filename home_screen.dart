import 'dart:html';

import 'package:flutter/material.dart';
import 'package:gorare/constants.dart';
import 'package:gorare/widget1/cosmetics_full.dart';
import 'package:gorare/widget1/pouplar_cosmetics.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PopularCosmetics(),
            CosmeticsFull(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mDarkBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      leading: IconButton(
        icon: Image.asset(
          'assets/images/menu1.png',
          width: 24,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            'assets/images/cart.png',
            width: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

