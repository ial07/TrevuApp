import 'package:flutter/material.dart';
import 'package:trevu_app/common/theme_helper.dart';
import 'package:trevu_app/screens/Beranda.dart';
import 'package:trevu_app/screens/Header_Widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight, true, Icons.login_sharp),
          ),
          SafeArea(
              child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                Text(
                  "Trevu",
                  style: TextStyle(fontSize: 50, fontFamily: 'geomanistBold'),
                ),
                Text(
                  "Signin into your account",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        children: [
                          TextField(
                            decoration: ThemeHelper().textInputDecoration(
                              'User Name',
                              'Enter your username',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 7,
                                child: TextField(
                                  obscureText: !_isVisible,
                                  decoration: ThemeHelper().textInputDecoration(
                                    'Password',
                                    'Enter your password',
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = !_isVisible;
                                      });
                                    },
                                    icon: _isVisible
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off)),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                            alignment: Alignment.topRight,
                            child: Text('Forgot your password?'),
                          ),
                          Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  "Sign In".toUpperCase(),
                                  style: TextStyle(
                                      // fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => Beranda(),
                                ));
                              },
                            ),
                          ),
                          Container(
                            child: Text('Don\'t have an account? Create first'),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ))
        ],
      )),
    );
  }
}
