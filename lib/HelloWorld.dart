import 'dart:ui';

import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({Key key}) : super(key: key);
  //pass some data into this class
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("My First Flutter Project"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: Image.asset("assets/logologin.png"),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20 , top: 20),
                  child: Text("Gojek",style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20 , top: 15),
                  child: Text("Welcome Aji",style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 20 , top: 15),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",style: TextStyle(fontSize: 15),),
                ))
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.only(left: 20 , top: 15),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          )
                      ),
                      onPressed: () {
                  }, child: Text("Login as Aji", style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: EdgeInsets.only(left: 20 , top: 15),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          )
                      ),
                      onPressed: () {
                  }, child: Text("Login with phone number", style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                )
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 20 , top: 10),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",style: TextStyle(fontSize: 10),),
                ))
              ],
            ),
          ],
        )
      ),
    );
  }
}
