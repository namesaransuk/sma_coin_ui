import 'package:flutter/material.dart';

import '../main.dart';

class Page4 extends StatelessWidget {
static const routeName = '/';
const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double ratio = height / width;

    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: Text("Page 4"),
      ),
      );
  }
}
