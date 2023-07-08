
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  appBarTheme: AppBarTheme(
      titleSpacing: 20,
      color: Colors.white30,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(
          color: Colors.white
      )

  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrange
  ),
  scaffoldBackgroundColor: Colors.white30,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.deepOrange,
    elevation: 5.0,
    backgroundColor: Colors.white30,
    unselectedItemColor: Colors.white,

  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
    bodyText2:TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
  ),

);
ThemeData lightTheme =ThemeData(
  primarySwatch: Colors.deepOrange,
  appBarTheme: AppBarTheme(
      titleSpacing: 20,
      color: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,


      ),
      iconTheme: IconThemeData(
          color: Colors.black
      )

  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrange
  ),
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      elevation: 5.0
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
    bodyText2:TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
  ),

);
