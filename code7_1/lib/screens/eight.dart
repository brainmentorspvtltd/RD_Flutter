import 'package:flutter/material.dart';

class GreetApp extends StatefulWidget {
  @override
  _GreetAppState createState() => _GreetAppState();
}

class _GreetAppState extends State<GreetApp> {
  String greet = "";
  _createButton(String label, Color color, Function fn) {
    return Container(
      margin: EdgeInsets.all(20),
      child: RaisedButton(
          color: color,
          padding: EdgeInsets.all(20),
          onPressed: () {
            //greet = "Welcome " + _getFullName();
            //greet = _getFullName();
            greet = fn();
            //DateTime.now();
            //Random r = Random(100);
            //int randomNumber =  r.nextInt(100);
            setState(() {});
          },
          child: Text(
            label,
            style: TextStyle(fontSize: 30),
          )),
    );
  }

  TextEditingController _tc1 = TextEditingController();
  TextEditingController _tc2 = TextEditingController();

  String _initCap(String name) {
    return name[0].toUpperCase() + name.substring(1).toLowerCase();
  }

  String _clearAll() {
    _tc1.text = '';
    _tc2.text = '';
  }

  String _getFullName() {
    String firstName = _tc1.text;
    String lastName = _tc2.text;
    String fullName = _initCap(firstName) + " " + _initCap(lastName);
    return "Welcome " + fullName;
  }

  _createTextField(String label, TextEditingController _controller) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            labelText: 'Type $label',
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 2.0),
                borderRadius: BorderRadius.circular(20)),
            //helperText: 'Name Here',
            prefixIcon: Icon(
              Icons.person,
              size: 30,
              color: Colors.black,
            )),
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      // appBar: AppBar(
      //   title: Text('Greet App'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          //margin: EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.redAccent,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Greet App'.toUpperCase(),
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                _createTextField('First Name', _tc1),
                _createTextField('Last Name', _tc2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _createButton('Greet', Colors.cyan, _getFullName),
                    _createButton('Clear', Colors.redAccent, _clearAll),
                  ],
                ),
                Text(
                  greet ?? '',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
