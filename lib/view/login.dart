import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;
import 'package:task/view/second_task_index.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loading = 0;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(hintText: "username"),
                  controller: emailController,
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: const InputDecoration(hintText: "password"),
                  controller: passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                loading == 1 ? _loading() : Container(),
                ElevatedButton(
                  child: const Text('login'),
                  onPressed: () async {
                    setState(() {
                      loading = 1;
                    });

                    Map<String, String> headers = {
                      'Accept': 'application/json',
                    };
                    Map data = {
                      'username': emailController.text.toString(),
                      'password': passwordController.text.toString(),
                    };

                    SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();

                    try {
                      http.Response response = await http.post(
                          Uri.parse(
                              'https://csuot.herokuapp.com/v1/auth/login/access-token'),
                          body: data,
                          headers: headers);

                      if (response.statusCode == 200 ||
                          response.statusCode == 201) {
                        Map<String, dynamic> body = jsonDecode(response.body);

                        sharedPreferences.setString(
                            'access_token', body['access_token']);
                        // go to new page
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SecondTaskIndex();
                        }));
                      } else {
                        var message = 'Incorrect email or password';

                        final snackBar =
                            SnackBar(content: Text(message.toString()));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }

                      setState(() {
                        loading = 0;
                      });
                    } catch (e) {
                      setState(() {
                        loading = 0;
                      });

                      var message = e;

                      final snackBar =
                          SnackBar(content: Text(message.toString()));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
