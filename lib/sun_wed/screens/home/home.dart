import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/screens/home/hotel_dm.dart';
import 'package:flutter_basics_c19/sun_wed/screens/home/hotel_widget.dart';

Color blue = Color(0xff024383);

class HomeScreen extends StatelessWidget {
  static const routeName = "home";
  List<HotelDM> hotels = [
    HotelDM(
      hotelName: "Dahab",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Sharm",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Alex",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Alex",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Marsa alam",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Alex",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Marsa alam",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Marsa alam",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Marsa alam",
      hotelImage: "assets/images/hotel1.png",
    ),
    HotelDM(
      hotelName: "Marsa alam",
      hotelImage: "assets/images/hotel1.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> hotelsWidget = [];
    for (var hotelDM in hotels) {
      hotelsWidget.add(HotelWidget(hotel: hotelDM));
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(16)),
                child: Text(
                  "Available Hotels",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: hotels.length,
                    itemBuilder: (context, index) =>
                        HotelWidget(hotel: hotels[index])))
          ],
        ),
      ),
    );
  }
}
