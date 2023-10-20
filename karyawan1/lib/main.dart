import 'package:flutter/material.dart';
import './pages/employee.dart';

void main() => runApp(MyApp());
 
 class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Data Karyawan',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:Employee(),
    );
  }
 }

