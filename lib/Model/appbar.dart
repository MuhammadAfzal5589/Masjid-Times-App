import 'package:flutter/material.dart';
class CustomAppbar1 extends StatelessWidget {
  const   CustomAppbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:  AssetImage("assets/images/masjidimage.jpg")  ,
              fit: BoxFit.fill)
      ),
    );
  }
}

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:  AssetImage("assets/images/Masjidimage1.jpg")  ,
              fit: BoxFit.fill)
      ),
    );
  }
}

class CustomAppbar3 extends StatelessWidget {
  const CustomAppbar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image:  AssetImage("assets/images/Masjidimage2.jpg")  ,
              fit: BoxFit.fill)
      ),
    );
  }
}
