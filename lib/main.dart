import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/src/binding/app_binding.dart';
import 'package:travel_booking_app/src/view/details.dart';
import 'package:travel_booking_app/src/view/home.dart';
import 'package:travel_booking_app/src/view/welcome.dart.dart';

void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  AppBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Travel Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "OpenSans"
      ),
      debugShowCheckedModeBanner: false, 
      getPages: [
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/detail', page: ()=> DetailsScreen()), 

      ],
      initialRoute: '/welcome',
    );
  }
}

