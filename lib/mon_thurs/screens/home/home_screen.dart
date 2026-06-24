import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/home/hotel_dm.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/home/hotel_widget.dart';

import '../../../mon_main.dart';

class HomeScreen extends StatelessWidget {
  List<HotelDM> hotels = [
    HotelDM(image: "assets/images/hotel1.png", name: "Sharm"),
    HotelDM(image: "assets/images/hotel2.jpg", name: "Dahab"),
    HotelDM(image: "assets/images/hotel1.png", name: "Alex"),
    HotelDM(image: "assets/images/hotel1.png", name: "Al alamin"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "Available hotels",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: hotels.length,
                itemBuilder: (context, index) => HotelWidget(hotels[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
