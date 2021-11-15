// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_booking_app/src/widgets/icon_card.dart';
import 'package:travel_booking_app/src/widgets/images_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

// import 'package:persistent_bottom_nav_bar/nav-bar-styles/style-6-bottom-nav-bar.widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int _currentIndex = 0;
 List<String> images = [
    '4.jpg','5.jpg','6.jpg','7.jpg','8.jpg','9.jpg','10.jpg','12.jpg','13.jpg',
    '15.jpg','1.jpg','2.jpg','3.jpg',
  ]; 
 List screens = [ 
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.pink
        ),
        child: BottomNavigationBar(
          fixedColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (value){
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Add'), 
          BottomNavigationBarItem(icon: Icon(Icons.favorite),  label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Add'),
        ]),
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                  SizedBox(height: 10,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_outlined,
                        size: 30,
                        color: Colors.black,
                      ))
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RichText(
                      text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                        const TextSpan(
                          text: 'Hello',
                          style: TextStyle(
                            fontFamily: "OpenSans Bold",
                            color: Colors.pinkAccent,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const TextSpan(
                          text: ', what are you  \n looking for? ',
                          style: TextStyle(
                            fontFamily: "OpenSans Bold",
                            color: Colors.black87,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ])),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              slider(),
              SizedBox(height: 20.0,), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  IconCard(iconData: Icons.home, text: 'Accomodation'),
                  IconCard(iconData: Icons.directions_bike, text: 'Experiences'),
                  IconCard(iconData: Icons.directions, text: 'Adventures'),
                  IconCard(iconData: Icons.flight, text: 'Flights')
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Experiences',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans SemiBold'),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                        ))
                  ],
                ),
              ),
              ImagesCard(),
            ],
          ),
        ),
      )),
    );
  }
  Widget slider(){
    return CarouselSlider(
      items: images.map((e) => ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)), 
        child: Container(
          child: Image.asset('images/$e', fit: BoxFit.cover, width: 900, height: 300,),
        ),
      )).toList(), 
      options: CarouselOptions(
        autoPlay: true, 
        enlargeCenterPage: true, 
        aspectRatio: 2.1
      )); 
  }
}
