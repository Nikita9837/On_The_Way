import 'package:flutter/material.dart';

import 'customListCard.dart';

class userRequests extends StatefulWidget {
  const userRequests({Key? key}) : super(key: key);

  @override
  _userRequestsState createState() => _userRequestsState();
}

class _userRequestsState extends State<userRequests> with SingleTickerProviderStateMixin{
 late TabController _tabController;

  @override

  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this,initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 50,
          backgroundColor: Color(0xFF03417A),
          title: Text(
            'Requests',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFCD1A),
            ),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
                fontSize: 20,
            color: Colors.white),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.white30,

            ), //
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Accepted',
              ),
            ],
          ),

          centerTitle: true,
        ),
        body: TabBarView(
          controller:_tabController,
          children: [
           ListView(
             children: [
               ListCard(),
               ListCard(),
               ListCard(),
               ListCard(),
             ],
           ),
            ListView(
              children: [
                ListCard(),
                ListCard(),
                ListCard(),
                ListCard(),
              ],
            ),
            // Container(
            //
            // )
          ],
        ),
      ),
    );
  }
}
