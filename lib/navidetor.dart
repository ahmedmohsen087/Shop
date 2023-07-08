import 'package:flutter/material.dart';

void NavigateTo(context,Widget) => Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context)=>Widget
    )
);

void NavigateReplace(context,Widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
        builder: (context)=>Widget
    ),
    (Route<dynamic>route)=>false ,

);

