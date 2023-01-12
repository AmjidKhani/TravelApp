import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/customwidget/location.dart';
import 'customicon/customicon.dart';
import 'customwidget/nearbyyoy.dart';
import 'customwidget/touristplaces.dart';
import 'locationcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Good Morning",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Have a Sweet Day",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ]),
          actions: [
            CustomIcon(
              icon: Ionicons.notifications,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 8),
              child: CustomIcon(
                icon: Ionicons.search,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
          const SizedBox(
            height: 5,
          ),
      
          //Location Card
      
          const LocationCard(),
      
          const SizedBox(
            height: 15,
          ),
      
          const Touristplaces(),
      
          const SizedBox(
            height: 15,
          ),
      
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendation",
                    style: Theme.of(context).textTheme.headline6),
                TextButton(
                  onPressed: () {},
                  child: const Text("View All"),
                ),
              ],
            ),
          ),
        
        const SizedBox(height: 10,),
      
           const Location(),
           const SizedBox(
            height: 10,
          ),
      Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nearby From You",
                    style: Theme.of(context).textTheme.headline6),
                TextButton(
                  onPressed: () {},
                  child: const Text("View All"),
                ),
              ],
            ),
          ),
            const SizedBox(
            height: 10,
          ),
        Nearby(),
        
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Ionicons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person), label: "Person"),
          ]),
    );
  }
}
