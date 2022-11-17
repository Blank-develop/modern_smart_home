import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //custom app bar
           Padding(
             padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
              ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'lib/icons/menu.png',
                  height: 45,
                  color: Colors.grey[800]
                ),
                Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.grey[800]
                  ),
              ],
             ),
           ),
           const SizedBox(height: 20,),
            // welcome home
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                Text('Welcome Home,'),
                 Text('Prayut CHANOSA',style: TextStyle(fontSize: 40),),
              ],),
            ),
            const SizedBox(height: 10,),

            //smart device
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text('Smart Devices'),
            ),
             

            //smart device
          ],
        ),
      )
    );
  }
}