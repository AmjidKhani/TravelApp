import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.all(10.0),
      child: Card(
elevation: 0,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
child: Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Row(
  
      children: [
  
  Image.asset('assets/map.png',
  
  width: 120,
  
  ),
  
  Column(
  
      mainAxisAlignment: MainAxisAlignment.start,
  
      crossAxisAlignment: CrossAxisAlignment.start,
  
      children: [
  
  
  
  Text("Your Location",
  
  style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).primaryColor)),
  
  
  
  SizedBox(height: 5,),
  
  Text("United States, New York",
  
  style: Theme.of(context).textTheme.labelLarge),
  
  
  
  
  
  ],),
  
  
  
  
  
      ]),
),

      ),
    );
  }
}