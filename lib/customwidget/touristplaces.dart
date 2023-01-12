import 'package:flutter/material.dart';

import '../touristmodal.dart';

class Touristplaces extends StatelessWidget {
  const Touristplaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: touristlist.length,
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.all(2.0),
            child: Chip(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Colors.white,
              elevation: 0.4,
              label: Text(touristlist[index].name!),
              avatar: CircleAvatar(
                backgroundImage: AssetImage(touristlist[index].img!),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(padding: EdgeInsets.all(8));
        },
      ),
    );
  }
}
