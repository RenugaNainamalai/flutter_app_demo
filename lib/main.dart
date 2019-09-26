import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    main()
    {
      print('Data printed');
    }
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
      ),
        body: Center(
          //child: Text('Hello World'),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                height: 50,
                child: new Text('Registaration',style: TextStyle(fontSize: 20),),

               ),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter the Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey),
                      prefixIcon: Icon(Icons.nature_people),
                    ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),

            ),

           SizedBox(
             height: 20,
           ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the Email Address',
                    hintStyle: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),

              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the Phone Number',
                    hintStyle: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey),
                    prefixIcon: Icon(Icons.phone_iphone),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  child: Text('REGISTER'),
                )

              )

            ],
          ),
//          child: TextField(
//
//            decoration: InputDecoration(
//              border: OutlineInputBorder(),
//              hintText: 'Enter the Email Address',
//                  hintStyle: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey),
//                  prefixIcon: Icon(Icons.email),
//              suffixIcon: Icon(Icons.print),
//              suffix: CircularProgressIndicator(),
//            ),
//            keyboardType: TextInputType.emailAddress,
//            textAlign: TextAlign.left,
//            autocorrect: false,
//            textInputAction: TextInputAction.done,
//            maxLength: 1,
//            //maxLines: 3,
//            obscureText: true,
//            style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.w800),
//
//          ),

        ),

      ),

    );

  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
