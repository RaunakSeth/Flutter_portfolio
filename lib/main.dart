
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/about.dart';
import 'package:flutter_portfolio_app/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context)=>MyHome(),
      'about':(context)=>MyAbout()
    },
  ));
}