import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => new _SignInState();
}

bool _rememberMeFlag = false;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 20.0),
            child:
                Icon(Icons.arrow_back_ios, size: 25, color: Colors.blue[600]),
          ),
          Center(
            child: Container(
                child: Text('CoworkerM',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 20.0),
            child: Container(
                child: Text('Sign In',
                    style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold))),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Email ID or Mobile No',
                          contentPadding: EdgeInsets.all(20.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)))),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(20.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)))),
                ),
                Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: _rememberMeFlag,
                                    onChanged: (value) => setState(() {
                                      _rememberMeFlag = !_rememberMeFlag;
                                    }),
                                  ),
                                  Text(
                                    "Stay Logged In",
                                    style: TextStyle(
                                      color: Colors.blue[200],
                                    ),
                                  )
                                ],
                              ),
                              onTap: () => setState(() {
                                _rememberMeFlag = !_rememberMeFlag;
                              }),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.0),
                          child: InkWell(
                            child: Text(
                              'Forgot Your Password?',
                              style: TextStyle(
                                color: Colors.red[200],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'Don\'t have account  ',
              ),
              InkWell(
                onTap: null,
                child: Text(
                  'Sign Up    ',
                  style: TextStyle(
                    color: Colors.red[200],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
