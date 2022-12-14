import 'dart:js';

import 'package:exam_ecommerce/exam.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Exam(),

    },
  ));
}