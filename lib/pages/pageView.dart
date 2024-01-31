// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text("Page View", style: TextStyle(color: Colors.white))),
        body: PageView(
          // scrollDirection: Axis.vertical,
          scrollDirection: Axis.vertical,
          // physics: BouncingScrollPhysics(),
          physics: ScrollPhysics(),

          children: [
            Container(
              color: Colors.red,
              child: Center(child: Text("page1")),
            ),
            Container(
              color: Colors.blue,
              child: Center(child: Text("page2")),
            ),
            Container(
              color: Colors.green,
              child: Center(child: Text("page3")),
            ),
          ],
        ));
  }
}
