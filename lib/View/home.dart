import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masjid/Model/MenuItem.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.2,
        foregroundColor: Colors.white,
        title: const Center(
          child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0,
        ),
        // title: const Center(child: FaIcon(FontAwesomeIcons.mosque,size: 70,),
        ),
        // leading: FaIcon(FontAwesomeIcons.list),
      ),
    body:  const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.0),
          Text("Options"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "Times",),
              MenuItem(text: "Direction",),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "About",),
              MenuItem(text: "Donation",),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "Theme",),
              MenuItem(text: "Settings",),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
