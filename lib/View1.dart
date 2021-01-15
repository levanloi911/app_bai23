import 'package:app_bai2/Coler.dart';
import 'package:flutter/material.dart';
import 'package:app_bai2/View2.dart';
class View1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: view1(),
    );
  }
}

class view1 extends StatefulWidget {
  @override
  _view1State createState() => _view1State();
}

class _view1State extends State<view1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/view1.png"))),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Sử dụng tài khoản vnEdu Connect để đăng \n nhập nếu như bạn đã có từ trước",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: ButtonTheme(
                  minWidth: 100.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => View2()),
                      );
                    },
                    color: red,
                    textColor: Colors.white,
                    child: const Text(
                      "Tiếp theo",
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
    );
  }
}
