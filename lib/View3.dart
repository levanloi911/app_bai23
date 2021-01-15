import 'package:flutter/material.dart';

import 'Coler.dart';
class View3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: view3(),
    );
  }
}

class view3 extends StatefulWidget {
  @override
  _view3State createState() => _view3State();
}

class _view3State extends State<view3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFCDD0),
                            borderRadius: BorderRadius.circular(20),
                          )
                        // color: Colors.red,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/khoa.png'))),
                      ),
                    ],
                  ),

                  Text(
                    "Cập nhật mật khẩu \n Thành công",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*0.5,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => updateword()
                            ),
                          );
                        },
                        textColor: Colors.white,
                       color: Colors.red,
                        child: const Text(
                          "Đăng nhập",
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.red)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}