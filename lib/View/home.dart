import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masjid/Model/MenuItem.dart';
import 'package:masjid/Model/mywidgets.dart';

import '../Model/appbar.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBarView(
        children: [
          Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: MediaQuery.of(context).size.height*0.2,
              backgroundColor: Theme.of(context).primaryColor,
              title: Center(child: Text("Title",style: Theme.of(context).textTheme.bodyMedium,)),
              // title:  const Center(child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0)),
              flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:   const CustomAppbar1()),
              bottom:   TabBar(
                indicatorColor:Theme.of(context).indicatorColor,
                labelColor:Theme.of(context).primaryColorLight,
                unselectedLabelColor:Theme.of(context).disabledColor,
                tabs: const [
                Tab(
                  child: Text("Home"),
                ),
                Tab(
                  child: Text("Current"),
                ),
                Tab(
                  child: Text("Joined"),
                ),
              ],),
            ),
          body:    TabBarView(
            children: [
              SingleChildScrollView(
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
                        MenuItem(text: "Search", icon: Icons.mosque),
                        MenuItem(text: "Location", icon: Icons.location_on_outlined,),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MenuItem(text: "About us", icon: Icons.info_outline_rounded,),
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
            ],
          ),
          ),
          Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: MediaQuery.of(context).size.height*0.2,
              backgroundColor: Theme.of(context).primaryColor,
              title:  const Center(child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0)),
              flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:   const CustomAppbar2()),
              bottom:   TabBar(
                indicatorColor:Theme.of(context).indicatorColor,
                labelColor:Theme.of(context).primaryColorLight,
                unselectedLabelColor:Theme.of(context).disabledColor,
                tabs: const [
                Tab(
                  child: Text("Home"),
                ),
                Tab(
                  child: Text("Current"),
                ),
                Tab(
                  child: Text("Joined"),
                ),
              ],),
            ),
          body:    TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
          ),
          Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: MediaQuery.of(context).size.height*0.2,
              backgroundColor: Theme.of(context).primaryColor,
              title:  const Center(child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0)),
              flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:   const CustomAppbar3()),
              bottom:   TabBar(
                indicatorColor:Theme.of(context).indicatorColor,
                labelColor:Theme.of(context).primaryColorLight,
                unselectedLabelColor:Theme.of(context).disabledColor,
                tabs: const [
                Tab(
                  child: Text("Home"),
                ),
                Tab(
                  child: Text("Current"),
                ),
                Tab(
                  child: Text("Joined"),
                ),
              ],),
            ),
          body:    const TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 20.0),
                    // Container(
                    //   height: 40.0,
                    //   color: Colors.grey.shade200,
                    //   child: const Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Bodytext(text: "Home"),
                    //       Bodytext(text: "Current"),
                    //       Bodytext(text: "Joined"),
                    //     ],
                    //   ),
                    // ),
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
            ],
          ),
          ),
        ],
      ),
    );
  }
}
