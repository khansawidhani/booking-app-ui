import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:travel_booking_app/src/modal/places.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);
  final Place place = Get.arguments;
  List<String> images = [
    '4.jpg','5.jpg','6.jpg','7.jpg','8.jpg','9.jpg','10.jpg','12.jpg','13.jpg',
    '15.jpg','1.jpg','2.jpg','3.jpg',
  ]; 
  @override
  Widget build(BuildContext context) {
    print(place.image);
    return Scaffold(
        body: Stack(children: [
      // white background
      Container(
        color: Colors.white,
      ),

      CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            collapsedHeight: 100.0,
            actions: [
              
            ],
            floating: false,
            flexibleSpace: Image(
              image: AssetImage("images/${place.image}"),
              fit: BoxFit.fill,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  trailing: Container(
                padding: const EdgeInsets.only(right: 16.0),
                
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 30,
                ),
              ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                                      children: <Widget>[ 
                                        const Icon(Icons.calendar_today, color: Colors.black54, size: 14, ), 
                                        const SizedBox(width: 5,), 
                                        Text("${place.days} days", 
                                        style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold), )
                                      ],
                                    ),
                  ),
                ), 
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 30,), child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(place.place,style: const TextStyle(fontFamily: "OpenSans Bold",color: Colors.black87, fontSize:25,fontWeight: FontWeight.bold,   )),
                        const SizedBox(height: 10.0,), 
                        const  Text('Arctic adventures offers glacier explorations of various length and difficulty', style: TextStyle(color: Colors.black54, fontSize: 14.0) ,),
                    const SizedBox(height: 10.0,), 
                    const Text("Traveler's Gallery", style: TextStyle(fontFamily: "OpenSans Bold", color: Colors.black87, fontSize:25,fontWeight: FontWeight.bold),), 
                    
                      ],
                    )), 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 500,
                        child: StaggeredGridView.countBuilder(
                          shrinkWrap: true,
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                staggeredTileBuilder: (index) => StaggeredTile.count(2, index.isEven ? 3 :1 ),
                itemBuilder: (context, index) => buildImageCard(index),
                itemCount: images.length,
                
                
              ),
                      ),
                    )
                  ],
                ),
              
              
              ), 
        ],
      ),
      buildBottomCard()
    ]));
  }

Widget buildImageCard(int index)=> Card(
    margin: EdgeInsets.zero,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0),)),
    child: ClipRRect(
      child: Image.asset('images/${images[index]}', fit: BoxFit.cover,),
    ),
  );
}

Widget buildBottomCard(){
      // bottom card
  return Positioned(
                bottom: 8.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    width: Get.width - 4,
                    height: 90,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(8, 8),
                            blurRadius: 15,
                            spreadRadius: 0),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: Offset(-8, -8),
                            blurRadius: 15,
                            spreadRadius: 0),
                      ],
                      color: Colors.pink,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Average Cost',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "OpenSans"),
                                ),
                                Text('\$350',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'OpenSans Bold',
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: const Text('Book a Tour',
                                  style: TextStyle(
                                    color: Colors.pink,
                                    fontSize: 16.0,
                                    fontFamily: "OpenSans Bold",
                                  ))),
                        )
                      ],
                    ),
                  ),
                ));
}
