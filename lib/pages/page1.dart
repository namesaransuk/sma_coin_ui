import 'package:flutter/material.dart';

import '../main.dart';

class Page1 extends StatelessWidget {
  static const routeName = '/';
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double ratio = height / width;

    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/bg1.png"),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          height: MediaQuery.of(context).size.height * 0.25,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 8,
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text("เงินในวอลเล็ต (บาท)"), Text("0.00")],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 90.0,
                          height: 100.0,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text("SMA Coin (sma)"), Text("0.00")],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(),
              ),
              //=================================================
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.home),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        fixedSize: const Size(100, 75),
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(24),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text("Button"),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              // ==============================
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
        // Container(
        //   height: 15.0,
        //   width: double.infinity,
        //   color: Colors.grey.shade200,
        // )
      ],
    ));
  }
}
