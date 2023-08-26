import 'package:flutter/material.dart';
import 'package:masjid/Model/MenuItem.dart';
import 'package:masjid/Model/appbar.dart';
import 'package:masjid/Model/mywidgets.dart';

class JoinedMasjid extends StatelessWidget {
  const JoinedMasjid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.2,
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CustomAppbar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 40.0,
              color: Colors.grey.shade200,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Bodytext(text: "Home"),
                  Bodytext(text: "Current"),
                  Bodytext(text: "Joined"),
                ],
              ),
            ),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
            MenuItemDetailed(),
          ],
        ),
      ),
    );
  }
}
