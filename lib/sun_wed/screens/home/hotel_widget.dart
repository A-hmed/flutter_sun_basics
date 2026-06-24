import 'package:flutter/material.dart';

import 'home.dart';
import 'hotel_dm.dart';

class HotelWidget extends StatelessWidget {
  HotelDM hotel;

  HotelWidget({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
    ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          hotel.hotelImage,
          height: 250,
          fit: BoxFit.fill,
        )),
    Container(
        width: double.infinity,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: blue, borderRadius: BorderRadius.circular(16)),
        child: Text(
          hotel.hotelName,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        )),
          ],
        );
  }
}
