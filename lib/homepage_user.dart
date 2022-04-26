import 'package:flutter/material.dart';

class userHomepage extends StatefulWidget {
  const userHomepage({Key? key}) : super(key: key);

  @override
  _userHomepageState createState() => _userHomepageState();
}

class _userHomepageState extends State<userHomepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Color(0xFF03417A),
        leading: Icon(
            Icons.menu_rounded,
          size: 50),
        leadingWidth: MediaQuery.of(context).size.width * 0.23,
        title: SizedBox(
        width: 50,
        height: 50,
        child: Image.asset('images/logomp_sz.png'),
      ),
        centerTitle: true,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.23 ,
            child: Icon(
                Icons.account_circle_outlined,
                size: 50
            ),
          ),
        ],

      ),
      body: Stack(
        children: <Widget>[
          // Replace this container with your Map widget
          Container(
            color: Colors.black,
          ),
          Positioned(
            top: 10,
            right: 15,
            left: 15,
            child: Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  IconButton(
                    splashColor: Color(0xFFFFF2C2),
                    icon: Icon(Icons.location_on),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(

                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFFF2C2),
                          border: InputBorder.none,
                          contentPadding:
                          EdgeInsets.symmetric(horizontal: 15),
                          hintText: "Search..."),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 8.0),
                  //   child: CircleAvatar(
                  //     backgroundColor: Colors.deepPurple,
                  //     child: Text('RD'),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
