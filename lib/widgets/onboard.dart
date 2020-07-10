import 'package:flutter/material.dart';
import 'package:sheCodeTask1/utils/colors.dart';

Widget coloredButton(text, color, style) {
  return Chip(
    label: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text),
    ),
    labelStyle: style,
    backgroundColor: color,
  );
}

Widget titleText(text, style) {
  return Text(
    text,
    style: style,
  );
}

Widget description(text, style) {
  return Text(
    text,
    style: style,
  );
}

Widget nonColoredButton(text, style) {
  return Container(
    //  width: 89,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: <Widget>[
        Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    text,
                    style: style,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: backgroundColor,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: purpleColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
      ],
    ),
  );
}

Widget avatar(asset) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(asset),
        fit: BoxFit.cover,
      ),
    ),
  );
}
