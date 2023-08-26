import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masjid/Model/MenuItem.dart';
import 'package:masjid/Model/mywidgets.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height*0.2,
        backgroundColor: Theme.of(context).primaryColor,
        title:  const Center(
          child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0,
        ),
        ),
        // leading: FaIcon(FontAwesomeIcons.list),
      ),
    body:    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
          Container(
            height: 40.0,
            color: Colors.grey.shade200,
            child:   const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Bodytext(text: "Home"),
                Bodytext(text: "Current"),
                Bodytext(text: "Joined"),
              ],
            ),
          ),
            const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "Times", icon: Icons.timelapse),
              MenuItem(text: "Direction", icon: Icons.location_on_outlined,),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "About", icon: Icons.info_outline_rounded,),
              MenuItem(text: "Donation", icon: FontAwesomeIcons.timeline,),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuItem(text: "Theme", icon: Icons.color_lens_outlined,),
              MenuItem(text: "Settings", icon: Icons.settings_outlined,),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
