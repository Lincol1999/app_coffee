import 'package:app_coffe/home_page.dart';
import 'package:flutter/material.dart';

Widget specialCoffe() {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: HomePage.screenHeight * 0.2 - 20,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff171b22),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          children: [
            Expanded(
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
                    image: AssetImage('assets/coffee3.jpeg'),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 Coffeee Beans you\nMust Try!',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'With Oat Milk',
                    style: TextStyle(
                      color: Color(0xffaeaeae),
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
                            '4.20',
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 15),
        height: 25,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff231715),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.star,
              size: 15,
              color: Color(0xffd17842),
            ),
            Text(
              '4.5',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )
    ],
  );
}
