import 'package:app_bai2/Coler.dart';
import 'package:app_bai2/update_password.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class sendemail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SendEmail(),
    );
  }
}

class SendEmail extends StatefulWidget {
  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text(
              "Khôi phục Mật khẩu",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Text(
              "Vui lòng nhập email của bạn để tiến hành \n khôi phục mật khẩu",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_sharp),
                labelText: 'Example@gmail.com',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => checkemail()),
                  );
                },
                color: red,
                textColor: Colors.white,
                child: const Text(
                  "Gửi email",
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class checkemail extends StatefulWidget {
  @override
  _checkemailState createState() => _checkemailState();
}

class _checkemailState extends State<checkemail> {
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
                            color: Color(0xFFFFCDD2),
                            borderRadius: BorderRadius.circular(20),
                          )
                          // color: Colors.red,
                          ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/email.png'))),
                      ),
                    ],
                  ),

                  Text(
                    "Kiểm tra hòm thư \n của bạn",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Chúng tôi đã gửi hướng dẫn thay đổi mật khẩu \n vào email của bạn.",
                    style: TextStyle(fontSize: 13,height: 1.5, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width*0.4,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => updateword()),
                          );
                        },
                        color: red,
                        textColor: Colors.white,
                        child: const Text(
                          "Gửi lại",
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.red)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Thử lại sau",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Không nhận được email? Kiểm tra hòm thư spam ",
                style: TextStyle(
                    fontWeight: FontWeight.w700, height: 1.5, fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "của bạn hoặc",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, height: 1.5, fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    child: Text(
                      " Thử lại với một email khác",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          fontSize: 13,
                          color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    onTap: opensendemail,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
  void opensendemail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SendEmail()),
    );
  }
}
