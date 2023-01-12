import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/locationmodal.dart';

class Nearby extends StatelessWidget {
  const Nearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SingleChildScrollView(
        child: SizedBox(
           width: double.maxFinite,
          child: Column(
            
            children: [
              ...List.generate(locations.length, (index) {
                return SizedBox(
                  height: 150,
                  width: double.maxFinite,
                  child: Card(
                    elevation: 0.9,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                         
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                locations[index].image!,
                                height: double.maxFinite,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Sea of Peace ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Portic Team ",
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                   
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Ionicons.locate_outline,
                                        size: 16,
                                      ),
                                      const Text("Accra  ---------"),
                                     
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Ionicons.location,
                                        size: 14,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text("Kumasi"),
                                    ],
                                  ),
                                   const Spacer(),
                                  SizedBox(

                                    child: Row(
                                        children: [
                                        Row(
                                         
                                          children: [
                                      Icon(
                                          Ionicons.star,
                                          color: Colors.yellow.shade700,
                                          size: 16,
                                        ),
                                       
                                         Text(locations[index].starts.toString()),
                                        ],),
                                    
                                          const SizedBox(width: 85,),
                                        Row(
                                          children:const [
                                    Text(
                                          "\$22",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                         Text("/person")
                                    
                                        ],),
                                         // Spacer(),
                                       
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
