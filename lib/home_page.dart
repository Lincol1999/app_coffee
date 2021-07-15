import 'package:flutter/material.dart';

import 'package:app_coffe/widgets/single_item.dart';
import 'package:app_coffe/widgets/special_coffe.dart';

import 'package:app_coffe/widgets/coffee_category.dart';
export 'package:app_coffe/home_page.dart';

class HomePage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff141921),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.grid_view_rounded,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff141921),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Find the best',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'Coffee for you',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff52555a),
                    ),
                    hintText: 'Find Your Coffee',
                    hintStyle: TextStyle(
                      color: Color(0xff52555a),
                    ),
                    fillColor: Color(0xff141922),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCoffeeCategory(
                        isSelected: true, categoryName: 'Cappuccino'),
                    buildCoffeeCategory(
                        isSelected: false, categoryName: 'Espresso'),
                    buildCoffeeCategory(
                        isSelected: false, categoryName: 'Latte'),
                    buildCoffeeCategory(
                        isSelected: false, categoryName: 'Espresso'),
                    buildCoffeeCategory(
                        isSelected: false, categoryName: 'Cappuccino'),
                    buildCoffeeCategory(
                        isSelected: false, categoryName: 'Latte'),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee1.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee8.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee4.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee5.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee6.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      image: 'assets/coffee7.jpeg',
                      title: 'Cappuccino',
                      subtitle: 'With oat Milk',
                      price: 4.20,
                      rating: 4.5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: ListTile(
                  leading: Text(
                    'Special for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              specialCoffe(),
            ],
          ),
        ),
      ),
    );
  }
}
