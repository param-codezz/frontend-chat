// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:harux/utils/services_utils.dart';
import 'package:harux/utils/ui_utils.dart';
import 'package:http/http.dart' as http;
import 'package:harux/pages/homepage.dart';
import 'package:harux/pages/createpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool usernameWarning = false;
  bool passwordWarning = false;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  List isEmpty() {
    if (username.text == '') {
      return [true, 'username'];
    } else if (password.text == '') {
      return [true, 'password'];
    } else {
      return [false, ''];
    }
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        error: usernameWarning
                            ? Icon(Icons.warning,
                                color: Theme.of(context).colorScheme.error)
                            : null,
                        filled: false,
                        label: const Text('Username'),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        error: passwordWarning
                            ? Icon(Icons.warning,
                                color: Theme.of(context).colorScheme.error)
                            : null,
                        filled: false,
                        label: const Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.outline),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () async {
                            if (isEmpty()[0]) {
                              if (isEmpty()[1] == 'username') {
                                setState(() => usernameWarning = true);
                              } else if (isEmpty()[1] == 'password') {
                                setState(() => passwordWarning = true);
                              }
                            } else {
                              const String apiUri =
                                  'https://backend-hosting-production.up.railway.app/login';
                              Map<String, dynamic> data = {
                                'username': username.text,
                                'password': hashedPassword(password.text),
                              };
                              try {
                                final response = await http.post(
                                    Uri.parse(apiUri),
                                    headers: {
                                      'Content-type': 'application/json'
                                    },
                                    body: jsonEncode(data));
                                if (response.statusCode == 200) {
                                  Login.saveLoginCredentials(username.text,
                                      hashedPassword(password.text));
                                  showSnackBar(
                                      context, 'Logged In', false, isDarkMode);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                } else if (response.statusCode == 401) {
                                  showSnackBar(context, 'Bad Credentials', true,
                                      isDarkMode);
                                  setState(() {
                                    usernameWarning = true;
                                    passwordWarning = true;
                                  });
                                } else if (response.statusCode == 500) {
                                  showSnackBar(context, 'Internal server error',
                                      true, isDarkMode);
                                }
                              } catch (e) {
                                log(e.toString());
                              }
                            }
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: FilledButton.tonal(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateAccountPage()),
                              );
                            },
                            child: const Text('Create Account'),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: FilledButton.tonal(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  isDarkMode
                                      ? Colors.blue.shade900
                                      : Colors.blue.shade100),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.android,
                                  color: isDarkMode
                                      ? Colors.blue.shade100
                                      : Colors.blue.shade900,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Login with Google',
                                  style: TextStyle(
                                      color: isDarkMode
                                          ? Colors.blue.shade100
                                          : Colors.blue.shade900),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}