import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_bai2/View1.dart';
import 'package:app_bai2/Coler.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 171, left: 77, right: 78),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home.png'))),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "XIN CHÀO !",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Giúp bạn phát triển sự nghiệp và hoàn thiện kiến \n thức của bản thân với hàng ngàn khóa học Online. \n Học mọi lúc, mọi nơi ",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: Center(
              child: Column(
                children:<Widget> [
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => View1()),
                        );
                      },
                      color: red,
                      textColor: Colors.white,
                      child: const Text(
                        "Bắt đầu",
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Liên hệ giáo viên phụ trách để được cấp tài \n khoản đăng nhập",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
