import 'package:flutter/material.dart';
import 'package:masjid/View/CurrentMasjid.dart';
import 'package:masjid/View/JoinedMasjid.dart';
import 'package:masjid/View/home.dart';
class Bodytext extends StatelessWidget {
  const Bodytext({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          switch (text){
            case "Home":
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            break;
            case "Current":
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CurrentMasjid()));
          break;
            case "Joined":
          Navigator.push(context, MaterialPageRoute(builder: (context)=>JoinedMasjid()));
          break;
          }
        },
        child: Text(text,style: Theme.of(context).textTheme.titleMedium,),);
  }
}
