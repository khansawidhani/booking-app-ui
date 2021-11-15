import 'package:flutter/material.dart';
import 'package:travel_booking_app/src/modal/places.dart';
import 'package:travel_booking_app/src/widgets/image_card.dart';

class ImagesCard extends StatelessWidget {
  ImagesCard({ Key? key }) : super(key: key);
  final List<Place> places = [
    Place(place: "Austria", image: "1.jpg", days: 7), 
    Place(place: "Pakistan", image: "2.jpg", days: 12), 
    Place(place: "Paris", image: "3.jpg", days: 3), 
    Place(place: "UAE", image: "1.jpg", days: 22), 
    Place(place: "Bali", image: "2.jpg", days: 14), 
    Place(place: "England", image: "3.jpg", days: 5), 

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        itemBuilder: (context, index){
        return ImageCard(
          name: places[index].place, days: places[index].days, picture: places[index].image, place: places[index]);
      }),
    );
  }
}