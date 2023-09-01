import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masjid/Model/MenuItem.dart';

import '../Model/appbar.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabNames = ['Tab 1', 'Tab 2', 'Tab 3']; // List of tab names
  String currentTabName = '';


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabNames.length, vsync: this);
    _tabController.addListener(_handleTabChange); // Add listener to track tab changes
  }
  void _handleTabChange() {
    setState(() {
      currentTabName = tabNames[_tabController.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: MediaQuery.of(context).size.height*0.2,
          backgroundColor: Theme.of(context).primaryColor,
          title: Center(child: Text("",style: Theme.of(context).textTheme.bodyMedium,)),
          // title:  const Center(child: Image(image: AssetImage("assets/images/Crescent.png"),height: 100.0,width: 100.0)),
          flexibleSpace: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child:   currentTabName == "Tab 1" ?  const CustomAppbar1()  : currentTabName == "Tab 2" ? const CustomAppbar2() :  const CustomAppbar3(), ),
          bottom:   TabBar(
            controller: _tabController,
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
        controller:  _tabController,
        children: const [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20.0),
                // Container(
                //   height: 40.0,
                //   color: Colors.grey.shade200,
                //   child:   const Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Bodytext(text: "Home"),
                //       Bodytext(text: "Current"),
                //       Bodytext(text: "Joined"),
                //     ],
                //   ),
                // ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "Search", icon: Icons.mosque),
                    MenuItem(text: "Location", icon: Icons.location_on_outlined,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "About us", icon: Icons.info_outline_rounded,),
                    MenuItem(text: "Donation", icon: FontAwesomeIcons.timeline,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "Theme", icon: Icons.color_lens_outlined,),
                    MenuItem(text: "Settings", icon: Icons.settings_outlined,),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "Times", icon: Icons.timelapse),
                    MenuItem(text: "Direction", icon: Icons.location_on_outlined,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "About", icon: Icons.info_outline_rounded,),
                    MenuItem(text: "Donation", icon: FontAwesomeIcons.timeline,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuItem(text: "Theme", icon: Icons.color_lens_outlined,),
                    MenuItem(text: "Settings", icon: Icons.settings_outlined,),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 20.0),
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
    );

  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
