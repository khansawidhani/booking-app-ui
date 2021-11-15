import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/src/controller/app_controller.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({ Key? key }) : super(key: key);
  static const String routeName = '/welcome';
  final controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('images/wl.jpg'),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: controller.colors),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text(
                'Enjoy the World',
                textScaleFactor: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white, 
                  fontSize: 36
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                'We will help you find the best \n experiences and adventures',
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.w400, 
                  fontSize: 16.0 
                ),
              ),
              const SizedBox(height: 20.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                    Get.offNamed('/home');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white, 
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.pink[800],),
                       ),
                  ),
                ),
              ), 
              const SizedBox(height: 40.0,)

            ],
          )
        ],
      ),
    );
  }
}