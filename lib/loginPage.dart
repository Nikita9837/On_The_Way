import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAED8FF),
      body:Column(
        children:[
        SizedBox(height: 35.0,),
      Center(
        child: Image(image: AssetImage("images/road1.png"),
          width:390.0,
          height: 250.0,
          alignment: Alignment.center,
        ),
      ),
          SizedBox(height: 1.0,),
          Text("Login",
            style: TextStyle(fontSize: 30.0),),
          
          Padding(padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 1.0,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize:14.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 1.0,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize:14.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
                style: TextStyle(fontSize: 14.0),
              ),
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
    );
  }
}
