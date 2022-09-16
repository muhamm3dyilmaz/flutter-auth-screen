import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Container(
              width: 250,
              height: 160,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fastfood.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  "@mail.com",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            // TextFormField(
            //   decoration: InputDecoration(label: Text("Username")),
            // ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  "password",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
              child: Text("Login"),
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
