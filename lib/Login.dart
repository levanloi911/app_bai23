import 'package:app_bai2/Coler.dart';
import 'package:app_bai2/SendEmail.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  bool _showPassword = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Text(
                  "Đăng nhập",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/login.png"))),
            ),
            ButtonTheme(
              minWidth: 300,
              height: 50,
              buttonColor: Colors.white,
              child: RaisedButton(
                onPressed: () {},
                child: const Text("Đăng nhập vnEdu"),
                textColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Hoặc sử dụng tài khoản được cấp",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_sharp,
                      color: Colors.red,
                    ),
                    labelText: 'Tài Khoản',
                    labelStyle: TextStyle(color: Colors.red),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: TextField(
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(
                    Icons.enhanced_encryption_sharp,
                    color: Colors.red,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: this._showPassword ? Colors.red : Colors.black,
                    ),
                    onPressed: () {
                      setState(() => this._showPassword = !this._showPassword);
                    },
                  ),
                  labelText: 'Mật khẩu',
                ),
                // errorMessage: 'must contain special character either . * @ # \$',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
              minWidth: 300.0,
              height: 50.0,
              child: RaisedButton(
                onPressed: _showMyDialog,
                color: red,
                textColor: Colors.white,
                child: const Text(
                  "Đăng nhập",
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 90),
              child: InkWell(
                child: Text(
                  "Quên mật khẩu tài khoản được cấp?",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
                  textAlign: TextAlign.right,
                ),
                onTap: opensendemail,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void opensendemail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SendEmail()),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            children: [
              Text(
                "Chọn trường học",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          ),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
              child: Column(
                children: [
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                  timeSlotWidget(
                      "THCS Trần Thanh Quang", "taphuanttq.vnedu.vn"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Column timeSlotWidget(String truong, String web) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        InkWell(
          child: Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFB9F6CA),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "$truong",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "$web",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
