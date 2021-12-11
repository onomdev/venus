
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venus/components/home.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
     if (width > 800) {
       return const Home2();
     }else{
       return const Home2();
     }
  }
}
