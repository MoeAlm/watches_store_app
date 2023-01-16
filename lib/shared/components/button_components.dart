import 'package:flutter/material.dart';

Widget buildButton(
    {required Color bgColor,
      required Color fgColor,
      required String img,
      required String text,
      required Function() onPressed}) {
  return SizedBox(
    width: 310,
    child: ElevatedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Row(
        children: [
          Image.asset(
            '$img',
            width: 28,
            height: 28,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}