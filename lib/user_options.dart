import 'package:flutter/material.dart';

class user_options extends StatelessWidget {
  const user_options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor:Color(0xFFAED8FF),
          body:Column(
          children:[
            SizedBox(height: 50.0,),
            Center(
              child: Image(image: AssetImage("images/car.jpg"),
                  width:200.0,
                  height: 200.0,
                  alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 15.0,),
            Text("new to",
            style: TextStyle(fontSize: 24.0),),
            Text("On The Way",
            style: TextStyle(fontSize: 30.0),),
            Text("Sign up as",
              style: TextStyle(fontSize: 24.0),),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 15.0,),
                  ElevatedButton(onPressed: (){
                    print("Sign up as Rider");
                  },
                    //color:Colors.black26,

                    child: Container(
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Rider",
                          style: TextStyle(
                              fontSize: 20.0
                          ),

                        ),
                      ),
                    ),
                    // // shape:new RoundedRectangleBorder(
                    // //   borderRadius: BorderRadius.circular(11.0)
                    // )
                  ),
                  SizedBox(height: 15.0,),
                  ElevatedButton(onPressed: (){
                    print("Sign up as User");
                  },
                    //color:Colors.black26,

                    child: Container(
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "User",
                          style: TextStyle(
                              fontSize: 20.0
                          ),

                        ),
                      ),
                    ),
                    // // shape:new RoundedRectangleBorder(
                    // //   borderRadius: BorderRadius.circular(11.0)
                    // )
                  )
                ],
              ),
            ),
            Text("already have an account?",
              style: TextStyle(fontSize: 22.0),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 15.0,),
                  ElevatedButton(onPressed: (){
                    print("You are logged in");
                  },
                    // color:Colors.black26,

                    child: Container(
                      height: 50.0,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20.0
                          ),

                        ),
                      ),
                    ),
                    // // shape:new RoundedRectangleBorder(
                    // //   borderRadius: BorderRadius.circular(11.0)
                    // )
                  )
                ],
              ),
            ),



          ]
  )
      ),
    );
  }
}
