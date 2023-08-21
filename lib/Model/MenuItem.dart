import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
    const MenuItem({super.key,required this.text});

   final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: const Color(0xFF007635),
              borderRadius: BorderRadius.circular(10.0)
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: 18.0),),
        ),
      ),
    );
  }
}
