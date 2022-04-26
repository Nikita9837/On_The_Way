import 'package:flutter/material.dart';
import 'package:on_the_way/userProfileStatus.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListTile(
        tileColor: Colors.white60,
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white24, width: 1),
            borderRadius: BorderRadius.circular(5)),
        contentPadding: EdgeInsets.all(10),
        leading: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.transparent,
          child: SizedBox(
          width: 50,
          height: 50,
          child: ClipOval(
              clipBehavior:Clip.hardEdge,

          //Add image of user
          child: Image.network("https://content.latest-hairstyles.com/wp-content/uploads/best-haircut-for-oval-face-shapes.jpg"),


          ),
        ),
      ),
        title: Container(
          padding: EdgeInsets.all(5),
          child: new Align(
            alignment: FractionalOffset.topCenter,
            child: Text(

              //name of user
              'Name',

              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // horizontalTitleGap: 30,
        subtitle: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              padding: EdgeInsets.all(5),
              height: 30,
              child: Text(

                //distance
                '10'+ ' km',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 30,
              child: Text(

                //price
                '20'+ ' Rs',

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        // trailing: Container(
        //   height: 50,
        //   width: 50,
        //   // color: Colors.yellow,
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       color:Colors.lightGreen,
        //       width: 2,
        //     ),
        //     // borderRadius: ,
        //   ),
        //   // padding: EdgeInsets.all(5),
        //   child: IconButton(
        //     alignment: Alignment.center,
        //     onPressed: (){},
        //     icon: Icon(
        //         Icons.remove_red_eye_outlined,
        //       color: Colors.green,
        //       size: 35,
        //     ),
        //   ),
        // ),


        trailing: IconButton(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            icon:Icon(
                Icons.arrow_forward_ios,
            size: 40,
            ),
            color: Colors.green,
            onPressed: (){},
          ),


      ),
    );
  }
}
