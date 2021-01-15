import 'package:app_bai2/Coler.dart';
import 'package:app_bai2/View3.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class UpdateWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: updateword(),
    );
  }
}

class updateword extends StatefulWidget {
  @override
  _updatewordState createState() => _updatewordState();
}

class _updatewordState extends State<updateword> {
  @override
  bool _showPassword = false;

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
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cập nhật mật khẩu",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mật khẩu mới của bạn cần khác so với mật khẩu \n cũ",
                    style: TextStyle(
                        fontSize: 13, height: 1.5, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: TextField(
                      obscureText: !this._showPassword,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        prefixIcon: Icon(Icons.enhanced_encryption_sharp),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: this._showPassword ? Colors.blue : Colors.black,
                          ),
                          onPressed: () {
                            setState(
                                () => this._showPassword = !this._showPassword);
                          },
                        ),
                        labelText: 'Mật khẩu mới',
                      ),
                      // errorMessage: 'must contain special character either . * @ # \$',
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 50,
                    child: TextField(
                      obscureText: !this._showPassword,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        prefixIcon: Icon(Icons.enhanced_encryption_sharp),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: this._showPassword ? Colors.blue : Colors.black,
                          ),
                          onPressed: () {
                            setState(
                                    () => this._showPassword = !this._showPassword);
                          },
                        ),
                        labelText: 'Nhập lại mật khẩu',
                      ),
                      // errorMessage: 'must contain special character either . * @ # \$',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mật khẩu phải trùng khớp",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => View3()),
                          );
                        },
                        color: red,
                        textColor: Colors.white,
                        child: const Text(
                          "Cập nhật",
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.red)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void opensendemail() {
    // Navigator.push(
    //   context,
    // MaterialPageRoute(builder: (context) => SendEmail()),
    // );
  }
}
