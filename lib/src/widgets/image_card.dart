import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/src/controller/app_controller.dart';
import 'package:travel_booking_app/src/modal/places.dart';

class ImageCard extends StatelessWidget {
  final String name;
  final int days;
  final String picture;
  final Place place;
  ImageCard(
      {Key? key,
      required this.name,
      required this.days,
      required this.picture,
      required this.place})
      : super(key: key);
  final controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: InkWell(
        onTap: () => Get.toNamed("/detail", arguments: place),
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromARGB(62, 168, 174, 201),
              offset: Offset(0, 9),
              blurRadius: 14,
            )
          ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/$picture',
                  height: 260,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.05),
                          Colors.black.withOpacity(0.025),
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(),
                    ),
                  ),
                ),
                const Positioned(
                  top: 15.0,
                  right: 15.0,
                  child: Icon(Icons.favorite, color: Colors.white, size: 25)), 
                Positioned(
                    bottom: 35,
                    left: 5,
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, ),
                          child: Text(
                            name, 
                            style: const TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ))), 
                        Positioned(
                          bottom: 10,
                          left: 5,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(padding: const EdgeInsets.only(left: 8.0), 
                            child: Row(
                              children: <Widget>[
                                const Icon(Icons.calendar_today, color: Colors.white, size: 14, ), 
                                const SizedBox(width: 5,), 
                                Text("$days days", style: const TextStyle(color: Colors.white, ), )

                              ],
                            ),
                            ),
                          ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
