// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/Login.dart';
import 'package:flutterapp/pages/listView.dart';
import 'package:flutterapp/pages/on_boading.dart';
import 'package:flutterapp/pages/rowandcolumn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LifeApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(108, 99, 255, 1.0),
            title: Center(
              child: Text(
                "LifeApp ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )),
        body: PageView.builder(
            itemCount: OnBoardingEntity.onBoardingData.length,
            itemBuilder: (context, index) {
              return OnBoardingItem(
                  title: OnBoardingEntity.onBoardingData[index].title,
                  description:
                      OnBoardingEntity.onBoardingData[index].description,
                  image: OnBoardingEntity.onBoardingData[index].image,
                  index: index);
            }));
  }
}

class OnBoardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int index;

  const OnBoardingItem(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            "assets/$image",
            height: 200,
            fit: BoxFit.cover,
          )),
          SizedBox(height: 20),
          Text(
            "$title",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            "$description",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 0 ? Colors.black : Colors.grey),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 20,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 1 ? Colors.black : Colors.grey),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 25,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 2 ? Colors.black : Colors.grey),
              ),
              Container(
                width: 35,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 3 ? Colors.black : Colors.grey),
              ),
              Container(
                width: 40,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 4 ? Colors.black : Colors.grey),
              ),
              Container(
                width: 45,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 5 ? Colors.black : Colors.grey),
              ),
              Container(
                width: 50,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 6 ? Colors.black : Colors.grey),
              ),
              Container(
                width: 50,
                height: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 7 ? Colors.black : Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
