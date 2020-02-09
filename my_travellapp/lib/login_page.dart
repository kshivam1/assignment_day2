import 'package:flutter/material.dart';

import 'containers.dart';

class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginState();
  }
}

class loginState extends State<login> {
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Email',
        icon: Icon(Icons.person),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        labelText: 'Password',
        icon: Icon(Icons.lock_open),
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is required';
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => login()),
        );
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("INVALID PASSWORD!!!"),
      content: Text("Press ok to try again"),
      actions: [
        okButton,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Center(
                          child: Container(
                            // height: 350,
                            // width: 200,
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 68.0,
                                    child: Image.asset(
                                        '/Users/kumarshivam/Sites/projects/my_travellapp/images/imgbin-flight-airplane-icon-a5-computer-icons-aircraft-icon-SZ319czv53z0dfSc4604zyBez.jpg'),
                                  ),
                                  // new Image.asset(
                                  //   '/Users/kumarshivam/Sites/projects/my_travellapp/images/imgbin-flight-airplane-icon-a5-computer-icons-aircraft-icon-SZ319czv53z0dfSc4604zyBez.jpg',
                                  //   fit: BoxFit.fill,
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("Welcome to travell with us",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                                color: Colors.black)),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      //color: Colors.purple[900],
                      border: Border.all(),

                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    margin: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        shrinkWrap: true,

                        //padding: EdgeInsets.only(left: 24.0, right: 24.0),
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildEmail(),
                          SizedBox(height: 25.0),
                          _buildPassword(),
                          SizedBox(height: 25.0),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: RaisedButton(
                                          padding: EdgeInsets.all(12),
                                          color: Colors.lightBlueAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Text('Log In',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {
                                            if (!_formKey.currentState
                                                .validate()) {
                                              return;
                                            }
                                            _formKey.currentState.save();
                                            if (_email == 'shivam' &&
                                                _password == 'shivam') {
                                              print('login sucessful');

                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Myapp()),
                                              );
                                            }
                                            if (_email != 'shivam' ||
                                                _password != 'shivam') {
                                              print('login sucessful');
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return alert;
                                                },
                                              );
                                            }
                                          },
                                        ))),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: RaisedButton(
                                          color: Colors.lightBlueAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          padding: EdgeInsets.all(12),
                                          child: Text('Sign up',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          onPressed: () {}),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ))),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
