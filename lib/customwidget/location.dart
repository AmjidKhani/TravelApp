import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/locationmodal.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics:BouncingScrollPhysics() ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(locations.length, (index) {
            return 
          SingleChildScrollView(
            child: SizedBox(
              width: 240,
              height: 225,
              child: Card(
                elevation: 0.4,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              locations[index].image!,
                              fit: BoxFit.cover,
                              width: double.maxFinite,
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Text(
                                "St, Regis Bora Bora",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Icon(
                                Ionicons.star,
                                color: Colors.yellow.shade700,
                                size: 16,
                              ),
                               Text(
                                locations[index].starts.toString(),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                          
                            children: [
                              Icon(
                                Ionicons.location,
                                color: Theme.of(context).primaryColor,
                                size: 13,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                "French Polynesia",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
          );
        
            
           
          }),
        ],
      ),
    );
  }
}
