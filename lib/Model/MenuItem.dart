import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem extends StatelessWidget {
    const MenuItem({super.key,required this.text, required this.icon});

   final String text;
   // final String image;
   final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: (){
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
        },
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!=null ? Icon(icon,size: 50.0,color: Colors.white,) : const FaIcon(FontAwesomeIcons.image),
                Text(text,style: Theme.of(context).textTheme.bodyMedium,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItemDetailed extends StatelessWidget {
  const MenuItemDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Flexible(
                  flex: 1,
                  child: FaIcon(FontAwesomeIcons.mosque,size: 50.0,color: Colors.white,)),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: Theme.of(context).textTheme.titleLarge,),
                    Text("Detail about the Masjid",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 1,
                      child: Icon(Icons.more_vert,color: Colors.white,)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
