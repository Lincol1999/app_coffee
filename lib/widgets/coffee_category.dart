import 'package:flutter/material.dart';

Widget buildCoffeeCategory({categoryName, isSelected}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Color(0xffd17842) : Color(0xff52555a),
          ),
        ),
        isSelected
            ? Text(
                '⬤',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffd17842),
                ),
              )
            : Text('')
      ],
    ),
  );
}
