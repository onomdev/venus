
// ignore: implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:venus/components/menu.dart';



// ignore: use_key_in_widget_constructors
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     if (width > 800) {
       return const Menu();
     }else{
       return const Menu();
     }
  }
}