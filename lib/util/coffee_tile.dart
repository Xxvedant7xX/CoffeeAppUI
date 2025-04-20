// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  
  final String coffeeImagePath;
  final String cofeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.cofeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25),
        child: Container(
          padding: EdgeInsets.all(12),
        width: 200,
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(12),
         color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //image
           ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(coffeeImagePath),
           ),

           //name
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              cofeeName,
              style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8,),
             Text('With Almond milk',
             style: TextStyle(color: Colors.grey[500],
             ),
             ),
             ],
             ),
           ),

           //price
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('\₹' + coffeePrice),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(color:Colors.orange,
                borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(Icons.add),
              ),
             ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}