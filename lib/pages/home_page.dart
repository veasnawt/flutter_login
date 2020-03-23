import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.10,
          horizontal: MediaQuery.of(context).size.width * 0.05
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            headerText(), 
            infoDisplayColumn(context), 
            Form(
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      usernameInputWidget(), 
                      passwordInputWidget(), 
                      loginButton(context), 
                      forgotPassword(), 
                      switchAccount(context),
                    ],
                  ),
                ),
            )
          ],
        ),
      ),
      )
    );
  }
  Widget headerText() {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Text(
        "LOGIN",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget infoDisplayColumn(BuildContext _context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(_context).size.width * 0.25, 
        MediaQuery.of(_context).size.height * 0.10, 
        0, 
        0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          userImage(_context),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(_context).size.height * 0.005,
            ),
            child: Text(
              "Hello there!",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          Text("Veasna WT",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40),
          ),
        ],
      ),
    );
  }

  Widget userImage(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height * 0.20,
      width: MediaQuery.of(_context).size.height * 0.20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage("https://scontent.fpnh19-1.fna.fbcdn.net/v/t1.0-9/86205677_2598661057088588_6187868552825929728_n.jpg?_nc_cat=107&_nc_sid=85a577&_nc_oc=AQlkbkMLQA-gDv6TQVVxcl6LRyzXpcrxiCcNK3noJbwNxrUX7_NxWoqS0Zadn8xEQZs&_nc_ht=scontent.fpnh19-1.fna&oh=47b042ceb21a08407a632c3f9a3a3422&oe=5E8E8C11"),
        ),
      ),
    );
  }

  Widget usernameInputWidget() {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        labelText: "Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        )
      ),
    );
  }

  Widget passwordInputWidget() {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        labelText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        )
      ),
    );
  }

  Widget loginButton(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height * 0.07,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20, 
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(2, 235, 0, 1),
            Color.fromRGBO(188, 255, 0, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }

  Widget forgotPassword() {
    return GestureDetector(
      onTap: () {
        print("Don't forget it, please!");
      },
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: 15, 
          color: Colors.blue
        ),
      ),
    );
  }

  Widget switchAccount(BuildContext _context) {
    return Container(
      height: MediaQuery.of(
      _context).size.height * 0.07,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Switch Account",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}