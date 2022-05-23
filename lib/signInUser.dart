import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signInUser extends StatelessWidget {
  const signInUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03417b),
      body: Column(
           children: [
             SizedBox(height: 20.0,),
             Center(
               child: Image(image: AssetImage("images/logomp_sz.png"),
                 width:150.0,
                 height: 100.0,
                 alignment: Alignment.center,
               ),
             ),
             SizedBox(height: 1.0,),
             Text("Sign up as User",
               style: TextStyle(fontSize: 30.0,color: Colors.white),),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                 children: [
                   SizedBox(height: 1.0,),
                   TextFormField(
                     keyboardType: TextInputType.name,
                     decoration: InputDecoration(
                       labelText: "Name",
                       labelStyle: TextStyle(
                         fontSize:14.0,
                           color: Colors.white
                       ),
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 11.0,
                       ),
                     ),
                     style: TextStyle(fontSize: 14.0),
                   ),
                   SizedBox(height: 1.0,),
                   TextFormField(
                     keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                       labelText: "Email",
                       labelStyle: TextStyle(
                         fontSize:14.0,
                           color: Colors.white
                       ),
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 11.0,
                       ),
                     ),
                     style: TextStyle(fontSize: 14.0),
                   ),
                   SizedBox(height: 1.0,),
                   TextFormField(
                     keyboardType: TextInputType.phone,
                     decoration: InputDecoration(
                       labelText: "Phone Number",
                       labelStyle: TextStyle(
                         fontSize:14.0,
                           color: Colors.white
                       ),
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 11.0,
                       ),
                     ),
                     style: TextStyle(fontSize: 14.0),
                   ),
                   SizedBox(height: 1.0,),
                   TextFormField(
                     keyboardType: TextInputType.name,
                     decoration: InputDecoration(
                       labelText: "City",
                       labelStyle: TextStyle(
                         fontSize:14.0,
                           color: Colors.white
                       ),
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 11.0,
                       ),
                     ),
                     style: TextStyle(fontSize: 14.0),
                   ),
                   SizedBox(height: 1.0,),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       labelText: "Set Password",
                       labelStyle: TextStyle(
                         fontSize:14.0,
                           color: Colors.white
                       ),
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 11.0,
                       ),
                     ),
                     style: TextStyle(fontSize: 14.0),
                   ),
                   SizedBox(height: 15.0,),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary:Color(0xFF0000000) ,
                     ),
                     onPressed: (){
                       print("You are logged in");
                     },
                     // color:Colors.black26,

                     child: Container(
                       height: 50.0,
                       child: Center(
                         child: Text(
                           "Signup",
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


           ],


      ),
    );
  }
}
