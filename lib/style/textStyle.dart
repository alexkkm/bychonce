import 'package:flutter/material.dart';

Text themetext(String text, double fontsize) {
  return Text(
    text,
    style: TextStyle(
        color: Color(0XFFc06c30),
        fontSize: fontsize,
        fontFamily: "DFKaiShu-SB-Estd-BF"),
  );
}

Text backtext(String text, double fontsize) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.white,
        fontSize: fontsize,
        fontFamily: "DFKaiShu-SB-Estd-BF"),
  );
}
