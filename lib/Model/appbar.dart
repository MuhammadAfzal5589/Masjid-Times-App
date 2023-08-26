import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/masjidimage.jpg"),fit: BoxFit.fill)
      ),
      // child: Image(image: AssetImage("assets/images/masjidimage.jpg")),
    );
  }
}
