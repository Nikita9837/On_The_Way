import 'package:flutter/material.dart';
import 'package:on_the_way/homepage_rider.dart';

//testing routing - AJS
import 'package:on_the_way/homepage_user.dart';
import 'package:on_the_way/userRequests.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
        heroTag: "btn1",
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
