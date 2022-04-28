import 'package:flutter/material.dart';
import 'package:on_the_way/homepage_rider.dart';

//testing routing - AJS
import 'package:on_the_way/homepage_user.dart';
import 'package:on_the_way/userRequests.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'homePage',
              style: Theme.of(context).textTheme.headline4,
            ),

            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const userRequests()),
                )
              },
              child: Text(
                'userRequests',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
            ),

            ElevatedButton(
              onPressed: () => {
                // userHomepage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const userHomepage()),
                )
              },
              child: Text(
                'userHomepage',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
              ),
            ),
          ],
        ),
      ),

      //testing routing - AJS
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const riderHomepage()),)
        },


        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}