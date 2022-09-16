import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/widgets/login_form.dart';

import '../widgets/register_form.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: FaIcon(
                FontAwesomeIcons.pizzaSlice,
              ),
            ),
            title: Text(
              'Food Delivery',
              style: TextStyle(fontFamily: 'TrainOne', fontSize: 25),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.login), text: "Login"),
                Tab(icon: Icon(Icons.account_circle), text: "Register"),
              ],
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.red,
                    Colors.green,
                  ],
                  stops: [
                    0.1,
                    0.9,
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              LoginForm(),
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
