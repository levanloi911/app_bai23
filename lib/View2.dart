import 'package:app_bai2/Coler.dart';
import 'package:app_bai2/Login.dart';
import 'package:flutter/material.dart';

class View2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: view2(),
    );
  }
}
class view2 extends StatefulWidget {
  @override
  _view2State createState() => _view2State();
}

class _view2State extends State<view2> {
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
                        image: AssetImage("assets/view2.png"))),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Hoặc liên hệ với giáo viên phụ trách để được \n cấp tài khoản và mật khẩu",
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
                        MaterialPageRoute(builder: (context) => login()),
                      );
                    },
                    color: red,
                    textColor: Colors.white,
                    child: const Text(
                      "Đăng Nhập",
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
