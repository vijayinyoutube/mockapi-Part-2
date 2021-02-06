import 'package:flutter/material.dart';

Widget buildHeightSpacer(double myHeight) => SizedBox(
      height: myHeight,
    );

Widget buildTextData(String name, String tech) => Text(
      "$name 💗 $tech",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.purple),
    );

Widget buildErrorData(String errorText) => Text(
      "$errorText",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 25.00, fontWeight: FontWeight.w500, color: Colors.red),
    );
