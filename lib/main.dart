import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Data'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Text(
                    'Please enter the following information',
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Full Name:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        //Untuk spasi
                        width: 20.0,
                      ),
                      SizedBox(
                        //Untuk wadah TextField
                        width: 220.0,
                        child: TextField(
                          maxLength: 25,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          autocorrect: true,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            hintText: 'Enter your name',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), //Untuk spasi antar baris
                  // ****************Email Address ****************
                  Row(
                    children: <Widget>[
                      Text(
                        'Email Address:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                          //Untuk spasi
                          width: 20.0),
                      SizedBox(
                        //Untuk wadah TextField
                        width: 220.0,
                        child: TextField(
                          maxLength: 50,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            hintText: 'Your Email',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), //Untuk spasi antar baris
                  // **************** Password ****************
                  Row(
                    children: <Widget>[
                      Text(
                        'Password:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                          //Untuk spasi
                          width: 20.0),
                      SizedBox(
                        //Untuk wadah TextField
                        width: 220.0,
                        child: TextField(
                          maxLength: 50,
                          obscureText: true,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          textInputAction: TextInputAction.done,
                          autocorrect: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), //Untuk spasi antar baris
                  // **************** Telephone ****************
                  Row(
                    children: <Widget>[
                      Text(
                        'Telephone:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                          //Untuk spasi
                          width: 20.0),
                      SizedBox(
                        //Untuk wadah TextField
                        width: 220.0,
                        child: TextField(
                          maxLength: 12,
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
