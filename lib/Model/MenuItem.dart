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
    MenuItemDetailed({super.key});

  final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
      return ListTile(
        // title: Text(items[index])
        title: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(FontAwesomeIcons.mosque),
                Column(
                  children: [
                    Text("Name",style: Theme.of(context).textTheme.bodyMedium,),
                    Text("Detail",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                )
              ],
            ),
          ),
        ),
      );
        }
    ) ;
}
}