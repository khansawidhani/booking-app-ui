import 'package:get/instance_manager.dart';
import 'package:travel_booking_app/src/controller/app_controller.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(AppController());
  }

}