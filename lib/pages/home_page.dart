// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffeeappui/util/coffee_tile.dart';
import 'package:coffeeappui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // list of coffee types
  final List coffeeType = [
    //[ coffee type, isSelected ]
    [
      'Cappucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  // user tapped on coffee types
  void coffeeTypeSelected(int index) {
    setState(() {

      //this for loop makes everything false
      for (int i=0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
          label: '',
          ),
        ],
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(children: [
              //find the best coffee text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Find the best coffee for you !!',
                  style: GoogleFonts.bebasNeue(
                   textStyle: TextStyle(
                   fontSize: 56,
                  color: Colors.white,
                    ),
                    ),
                  ),
              ),
            
              SizedBox(height: 25,),
            
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your coffee...',
                    focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600),
                    ),
                  ),
                ),
              ),
            
              SizedBox(height:25),
              
              // horizontal list view of coffee types
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context,index) {
                  return CoffeeType(
                    coffeeType: coffeeType[index][0],
                     isSelected: coffeeType[index][1],
                      onTap: () {
                        coffeeTypeSelected(index);
                      },
                    );
                },
                ),
              ),
            
              //horizontal list view of coffee tiles
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CoffeeTile(
                      coffeeImagePath: 'lib/images/latte.jpg',
                      cofeeName: 'Latte',
                      coffeePrice: '350',
                    ),
                    CoffeeTile(
                      coffeeImagePath: 'lib/images/cappucino.jpg',
                      cofeeName: 'Cappucino',
                      coffeePrice: '300',
                    ),
                    CoffeeTile(
                      coffeeImagePath: 'lib/images/milk.jpg',
                      cofeeName: 'Milk Coffee',
                      coffeePrice: '450',
                    ),
                  ],
                ),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}