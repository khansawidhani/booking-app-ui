import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  const IconCard({
     Key? key ,
     required this.iconData, required this.text
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)), 
              color: Colors.pink[50], 
            ),
            child: IconButton(onPressed: (){}, icon: Icon(iconData, size: 30, color: Colors.pink[400],)),
          ), 
          Text(text, style:TextStyle(fontSize: 12, fontWeight:FontWeight.bold, color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}