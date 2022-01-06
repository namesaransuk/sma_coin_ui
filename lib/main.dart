import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          //=================================================
          body: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.home),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      fixedSize: const Size(240, 80),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.home),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: const Size(240, 80),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.home),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      fixedSize: const Size(240, 80),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.home),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: const Size(240, 80),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          ),
          //==============================================
        ));
  }
}
