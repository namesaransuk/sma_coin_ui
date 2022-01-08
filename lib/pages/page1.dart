import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../main.dart';

final List<String> imgList = [
  // 'https://smadropship.com/assets/uploads/5bdf5c35c9b7ff4c770de3af627cfdd5.jpg',
  // 'https://smadropship.com/assets/uploads/a4f412fbc48862fc81325dd8b7abe3fe.jpg',
  // 'https://smadropship.com/assets/uploads/4ab276de0e8691c646367398532c7591.jpg',
  // 'https://smadropship.com/assets/uploads/c55c7d0014af9d76eb7e7f072cd0c96f.jpg',
  // 'https://smadropship.com/assets/uploads/08c1623e81ee779d048c1e17d7a3134f.jpg'
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Page1 extends StatefulWidget {
  static const routeName = '/';
  const Page1({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<Page1> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
// carousel

            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Container(
                child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.vertical,
                autoPlay: true,
              ),
              items: imageSliders,
            )),
// carousel
          ],
        ));
  }
}
