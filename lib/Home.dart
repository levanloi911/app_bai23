import 'package:flutter/material.dart';

import 'calenda_learing.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _homepage = homepage();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();
  Widget _search = search();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.red,),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            title: Text(""),
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody( )  {
    if(this.selectedIndex == 0) {
      return this._homepage;
    } else if(this.selectedIndex==1) {
      return this._myEmails;
    } else if(this.selectedIndex==2){
      return this._myProfile;
    }else {
      return this._search;
    }
  }
  void onTapHandler(int index)  {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                height: MediaQuery.of(context).size.height * 0.07,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Xin chào,",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Thu Cúc",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 55),
                        child: Icon(Icons.notifications_none),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 50,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          image: DecorationImage(
                              image: AssetImage('assets/avt.jpg'),
                              alignment: Alignment.centerRight),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.only(right: 20, left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/nhagiaovietnam.png')),
                    borderRadius: BorderRadius.circular(30)),
              ),
              Container(
                height: 5,
                color: Colors.black26,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: <Widget>[
                    Stack(
                      children: [
                        Align(
                            child: InkWell(
                              child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/Group1.png')),
                          ),
                        ),
                              onTap: _opencalenda,
                            )),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Lịch học tập")),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Group2.png')),
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Khóa học của tôi")),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Group3.png')),
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Cuộc thi của tôi")),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Group4.png')),
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Tin tức")),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/Group5.png')),
                          ),
                        )),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("Sự kiện")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                color: Colors.black26,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Đang Học",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      margin: EdgeInsets.only(top: 10),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Danghoc(
                              "danghoc.png",
                              "H2 + O2 => HOHO ? \nCông thức huyền thoại \nnày đúng hay sai?",
                              "Môn hóa",
                              "10"),
                          Danghoc(
                              "danghoc.png",
                              "H2 + O2 => HOHO ? \nCông thức huyền thoại \nnày đúng hay sai?",
                              "Môn hóa",
                              "10"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Khóa học mới nhất",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Tất cả",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.red),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 224,
                      margin: EdgeInsets.only(top: 20),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Khoahocmoinhat(
                              "khoahocmoi.png",
                              "H2 + O2 => HOHO ? Công thức huyền \nthoại này đúng hay sai?",
                              "Môn hóa",
                              "10"),
                          Khoahocmoinhat(
                              "khoahocmoi.png",
                              "H2 + O2 => HOHO ? Công thức huyền \nthoại này đúng hay sai?",
                              "Môn hóa",
                              "10"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Bảng tin",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Bangtin(
                            "24/11",
                            "Năm 2020",
                            "Sửa Tập huấn giáo viên theo \nchương trình mới bằng trực tuyến",
                          ),
                          Bangtin(
                            "24/11",
                            "Năm 2020",
                            "Sửa Tập huấn giáo viên theo \nchương trình mới bằng trực tuyến",
                          ),
                          Bangtin(
                            "24/11",
                            "Năm 2020",
                            "Sửa Tập huấn giáo viên theo \nchương trình mới bằng trực tuyến",
                          ),
                          Bangtin(
                            "24/11",
                            "Năm 2020",
                            "Sửa Tập huấn giáo viên theo \nchương trình mới bằng trực tuyến",
                          ),
                          Bangtin(
                            "24/11",
                            "Năm 2020",
                            "Sửa Tập huấn giáo viên theo \nchương trình mới bằng trực tuyến",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );

  }


  Container Danghoc(String img, String text, String mon, String tiendo) {
    return Container(
      margin: EdgeInsets.only(left: 15, top:5, bottom: 5),
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Color(0x1F000000), spreadRadius: 2),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Container(
              width: 152,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                    'assets/$img',
                  ))),
            ),
          ),
          SizedBox(width: 20),
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "$text",
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 13, height: 1.5),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Môn hóa",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                      height: 1.5,
                      color: Colors.red),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Môn hóa",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                      height: 1.5,
                      color: Colors.red),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container Khoahocmoinhat(String img, String text, String mon, String tiendo) {
    return Container(
      margin: EdgeInsets.only(left: 15, top:5, bottom: 5),
      width: 265,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Color(0x1F000000), spreadRadius: 2),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                width: 251,
                height: 123,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/$img',
                    ))),
              ),
            ),
            SizedBox(width: 10),
            Text(
              "$text",
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: 13, height: 1.5),
              textAlign: TextAlign.start,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Môn hóa",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    color: Colors.red),
                textAlign: TextAlign.end,
              ),
            ),
            Expanded(child: Container()),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Môn hóa",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                        color: Colors.red),
                    textAlign: TextAlign.end,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Môn hóa",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 13,
                        height: 1.5,
                        color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container Bangtin(String date, String year, String content) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFFFFEBEE)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            width: 78,
            height: 78,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$date",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text("$year",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.white)),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("$content",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.red)),
          ),
        ],
      ),
    );
  }
  void _opencalenda() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Calenda()),
    );
  }

}



class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Emails"));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ok"));
  }
}
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ok "));
  }
}
