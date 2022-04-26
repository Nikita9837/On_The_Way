import 'package:flutter/material.dart';

class userProfileStatus extends StatelessWidget {
  const userProfileStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: Color(0xFF03417A),
        title: Text(
          'Profile Status',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFCD1A),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF9BC4EB),
        ),

        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
            //  pic username gender age
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),

              child: Row(
                children: [
                 Container(
                   width: MediaQuery.of(context).size.width * 0.28,
                   // width: 150,
                   height:MediaQuery.of(context).size.width * 0.28,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(125)),
                     color: Colors.black45,
                   ),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(125),
                     child: Image.network(
                       'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                         width: 130,
                         height: 130,
                         // fit:BoaFit.fill,
                     ),
                   ),
                 ),
                  Container(

                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                'gender',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                'rating',
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            )
                          ]
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
            //  pick up
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.10,
              child: Center(
                child: Text(
                  'Pick Up location',
                  style: TextStyle(
                    fontSize: 20,

                  ),
                ),
              ),
            ),
            Container(
            //  drop out
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.10,
              child: Center(
                child: Text(
                    'Drop out location',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  //distance
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),

                  child: Center(
                    child: Text(
                      'x'+' km',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                Container(
                //  fare
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.10,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),

                  child: Center(
                    child: Text(
                      'y'+' Rs',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                )


              ],
            ),

            Container(
            //  button for acceptance of request
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                  onPressed: () {
                  //  display current location



                },
                  child: Text(
                      'Accept',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // background
                    onPrimary: Colors.white, // foreground
                  ),
                ),
              ),
            ),
            Container(
              //  view current location
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              // color: Colors.white,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(onPressed: () {
                  //  delete the request



                },
                  child: Text(
                    'Deny',
                    style: TextStyle(
                      fontSize: 25,
                    ),

                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent[200], // background
                    onPrimary: Colors.white, // foreground
                  ),
                ),
              ),
            ),
            Container(
              //  drop out
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.05,
              child: Row(
                children: [
                  Icon(Icons.phone),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                    child: Text(
                      'mobile',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
