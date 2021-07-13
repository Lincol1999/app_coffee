import 'package:flutter/material.dart';

import 'package:app_coffe/home_page.dart';

Widget buildSingleItem({image, title, subtitle, price, rating}) {
  return Container(
    height: HomePage.screenHeight * 0.3,
    width: HomePage.screenWidth * 0.4 + 10,
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.all(10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Color(0xff17191f),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 1,
                        color: Color(0xff30221f)),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color(0xffaeaeae),
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$\t',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffd17842),
                            ),
                          ),
                          Text(
                            '$price',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffd17842),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 20,
          width: 55,
          decoration: BoxDecoration(
            color: Color(0xff231715),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: 12,
                color: Color(0xffd17842),
              ),
              Text(
                '$rating',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
