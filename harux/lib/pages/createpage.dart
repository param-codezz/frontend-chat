// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:harux/pages/login.dart';
import 'package:harux/utils/services_utils.dart';
import 'package:harux/utils/ui_utils.dart';
import 'package:email_validator/email_validator.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool hasError = false;
  bool hasEmailError = false;
  bool passwordsMatch = false;
  bool usernameExists = false;
  String errorText = '';
  String matchText = '';
  TextEditingController name = TextEditingController();
  TextEditingController usernname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  bool validateConstraints() {
    return !hasEmailError &&
        !hasError &&
        !passwordsMatch &&
        name.text != '' &&
        email.text != '' &&
        usernname.text != '' &&
        password.text != '' &&
        confirmPass.text != '';
  }

  List _validatePassword(String password) {
    if (password.length < 8) {
      return ['Password must be at least 8 characters.', true];
    }

    if (!password.contains(RegExp(r'[A-Z]'))) {
      return ['Password must contain at least\n one uppercase letter.', true];
    }

    return ['', false]; // No validation error
  }

  bool _isValidEmail() {
    return EmailValidator.validate(email.text);
  }

  List _checkMatch() {
    if (password.text == confirmPass.text) {
      return [false, 'Passwords Match'];
    } else {
      return [true, 'Passwords does not match'];
    }
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Create Account',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: name,
                      decoration: InputDecoration(
                        filled: false,
                        label: const Text('Name'),
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextField(
                      controller: usernname,
                      decoration: InputDecoration(
                        error: usernameExists
                            ? Row(
                                children: [
                                  Icon(Icons.warning,
                                      color:
                                          Theme.of(context).colorScheme.error),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Username already exists',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                ],
                              )
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
                      onChanged: (value) {
                        setState(() {
                          hasEmailError = !_isValidEmail();
                        });
                      },
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        error: hasEmailError
                            ? Row(
                                children: [
                                  Icon(Icons.warning,
                                      color:
                                          Theme.of(context).colorScheme.error),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Please add a valid email',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                ],
                              )
                            : null,
                        filled: false,
                        label: const Text('Email'),
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
                      onChanged: (value) {
                        setState(() {
                          errorText = _validatePassword(value)[0];
                          hasError = _validatePassword(value)[1];
                        });
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(16),
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      obscureText: true,
                      decoration: InputDecoration(
                        error: hasError
                            ? Row(children: [
                                Icon(Icons.warning,
                                    color: Theme.of(context).colorScheme.error),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(errorText,
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ))
                              ])
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
                    const SizedBox(
                      height: 18,
                    ),
                    TextField(
                      controller: confirmPass,
                      onChanged: (value) {
                        setState(() {
                          passwordsMatch = _checkMatch()[0];
                          matchText = _checkMatch()[1];
                        });
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(16),
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      obscureText: true,
                      decoration: InputDecoration(
                        error: passwordsMatch
                            ? Row(children: [
                                Icon(Icons.warning,
                                    color: Theme.of(context).colorScheme.error),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(matchText,
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ))
                              ])
                            : null,
                        filled: false,
                        label: const Text('Confirm Password'),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FilledButton(
                          onPressed: () async {
                            if (validateConstraints()) {
                              const String apiUri =
                                  'https://backend-hosting-production.up.railway.app/create';
                              Map<String, dynamic> data = {
                                'name': name.text,
                                'email': email.text,
                                'username': usernname.text,
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
                                  Map<String, dynamic> jsonResponse =
                                      jsonDecode(response.body);
                                  if (jsonResponse['status'] ==
                                      'account created') {
                                    showSnackBar(
                                        context,
                                        'Account created Successfully',
                                        false,
                                        isDarkMode);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ),
                                    );
                                  } else if (jsonResponse['status'] ==
                                      'existing username') {
                                    showSnackBar(
                                        context,
                                        'Username already exists',
                                        true,
                                        isDarkMode);
                                    setState(() {
                                      usernameExists = true;
                                    });
                                  }
                                } else {
                                  showSnackBar(
                                      context, 'Error', true, isDarkMode);
                                }
                              } catch (error) {
                                log(error.toString());
                              }
                            } else {
                              showSnackBar(
                                  context,
                                  'Please fill the details correctly',
                                  true,
                                  isDarkMode);
                            }
                          },
                          child: const Text('Create'),
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
                                    builder: (context) => const LoginPage()),
                              );
                            },
                            child: const Text('Login'),
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
                                Icon(Icons.android,
                                    color: isDarkMode
                                        ? Colors.blue.shade100
                                        : Colors.blue.shade900),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Sign In with Google',
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