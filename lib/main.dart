import 'package:flutter/material.dart';
//import 'package:flutter_tu';
//import ‘package:fluttertoast/fluttertoast.dart’;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Percentage Calculator';

    return MaterialApp(
      title: appTitle,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
      home: MyHomePage(),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  double result = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("Calculate"),
                onLongPress: (){

                },
                onPressed: () {
                  setState(() {
                    double    no1,no2,divid,negle;
                    no1 = double.parse(num1controller.text);
                    no2 = double.parse(num2controller.text);
                    ///negle = no1-no2;
                    negle = no2-no1;
                    divid = (negle/no1)*100;
                    //    double sum = double.parse(num1controller.text) /
                    //      double.parse(num2controller.text);
                    //result = sum;//.toString();
                    result = divid;

                  });
                },
              ),



            ],
          ),
          SizedBox(
            height: 40,
            width:40,
          ),
          Text('$result% change'),

        ],
      ),
    );
  }
}


//import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('DK Cal'),
      ),
      body:AddTwoNumbers(),
    );
  }
}


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'DK Cal',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('DK'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('OverallLOL'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('About'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}