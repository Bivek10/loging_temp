import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: formKey,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.red,
                //backgroundImage: AssetImage(""),
              ),
              //for email
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  hintText: "adc@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "email is compulsory";
                  }
                  //check email format

                  return null;
                },
                // decoration: ,
              ),

              //for password
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
                ),

                validator: (value) {
                  if (value.isEmpty) {
                    return "password is compulsory";
                  }
                  //check email format

                  return null;
                },
                // decoration: ,
              ),

              //Signin button,
              ElevatedButton(
                onPressed: () {
                  //call the login api..
                  isFormValidate();
                },
                child: Text("Login"),
              ),
              //forgot password
              TextButton(
                onPressed: () {
                  //navigate to forgot password page.
                },
                child: Text("Forgot password? "),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  isFormValidate() {
    if (formKey.currentState.validate()) {
      //just go for login process
      ///backend
      ///check response
      ///if response is ok
      /// preserve the token or login credential
      /// naivate to home page.
      /// 
    }
  }


  //get the token 
  //if token is empty
  //navigate to login page
  //else 
  //navigat to home page

 //logout case
 // clear the token from sharedpref.
 
}
