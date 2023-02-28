import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trawell/card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePAge(),
    );
  }
}

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  List<String> imgList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1rYO4XNs-HqMYiwHHlNlZYB_qCXa3V2j4uZeVGsk_1DG6HXB-3i00S-gM6bxone7VMY&usqp=CAU"
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDVHHwZzosblq6Qj-z9KpxVAezz4rz_wEVnSyelObKnjvjh0uZYWm-3DaVZIDeeD_Dyos&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Trawell 1',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'aaa',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Text('chous your next desision',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w300)),
            SizedBox(
              height: 80,
            ),
            Text(
              'top destination',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                enableInfiniteScroll: false,
                initialPage: 1,
              ),
              items: [cardShape(imgList[0], "Moren Like", "canca")],
            )
          ],
        ),
      ),
    );
  }
}
