import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_main.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/home/hotel_dm.dart';

class HotelWidget extends StatelessWidget {
  HotelDM hotel;

  HotelWidget(this.hotel);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            hotel.image,
            height: 250,
            fit: BoxFit.fill,
          ),
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: blue, borderRadius: BorderRadius.circular(16)),
            child: Text(
              hotel.name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
      ],
    );
  }
}
