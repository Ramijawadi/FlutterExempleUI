// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "List",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (context, separator) {
              return Container(
                height: 5,
                width: double.infinity,
                color: Colors.blueAccent,
              );
            },
            itemCount: 9,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
                title: Text('Username'),
                subtitle: Text('some details'),
                trailing:
                    Icon(Icons.delete, color: Color.fromARGB(255, 12, 64, 154)),
              );
            }));
  }
}
