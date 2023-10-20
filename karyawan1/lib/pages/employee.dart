import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Employee extends StatelessWidget{
  //DUMMY DATA YANG AKAN DITAMPILKAN SEBELUM MELAKUKAN HIT KE API
  //ADAPUN FORMAT DATANYA MENGIKUTI STRUKTU YANG SUDAH DITETAPKAN PADA EMPLOYEEMODEL
  final data = [
    {
      "id": "1",
      "employeeName": "Tiger Nixon",
      "employeePosition": "Manager",
      "employeeAge": "23",
      "profileImage": "",
    },
    {
      "id": "2",
      "employeeName": "Anugrah Sandi",
      "employeePosition": "Karyawan",
      "employeeAge": "25",
      "profileImage": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATA KARYAWAN'),
      ),
     
      body: ListView.builder(
        itemCount: data.length, 
       
        itemBuilder: (context, i) {
          
      
          return Card(
            elevation: 8,
            child: ListTile(
              title: Text(
               '${data[i]['employeeName']}',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text('Umur: ${data[i]['employeeAge']}'),
              trailing:
                 Text("${data[i]['employeePosition']}"),
            ),
          );
        },
      ),
    );
  }
}