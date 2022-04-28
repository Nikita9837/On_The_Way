import 'package:flutter/material.dart';
import 'package:on_the_way/userRequests.dart';

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
        leading: IconButton(
          onPressed: ()=>{
          // show menu
          },
          icon: Icon(
              Icons.menu_rounded,
            size: 50),
        ),
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
            child: IconButton(
              onPressed: ()=>{
                //navigate to user's profile
                },
              icon: Icon(
                  Icons.account_circle_outlined,
                  size: 50
              ),
            ),
          ),
        ],

      ),
      body: Stack(
        children: <Widget>[
          // Replace this container with your Map widget
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            right: 15,
            left: 15,
            child: Container(
              color: Colors.black12,
              child: Row(
                children: <Widget>[
               Container(
                 padding: EdgeInsets.all(5),
                 child: Icon(
                          Icons.location_searching_sharp,
                      size: 30,
                 ),
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
                          hintText: "Enter pick up location"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 15,
            left: 15,
            child: Container(
              color: Colors.black12,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.location_on,
                      size: 30,
                    ),
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
                          hintText: "Enter drop out location"),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(5),
                  //   height: 50,
                  //   width: 50,
                  //   child:  IconButton(
                  //     splashColor: Color(0xFFFFF2C2),
                  //     icon: Icon(
                  //       Icons.search_sharp,
                  //       size: 30,
                  //     ),
                  //     onPressed: () => {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => const userRequests()),
                  //       )
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
