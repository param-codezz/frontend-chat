// ignore_for_file: use_build_context_synchronously
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:harux/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class ThemeProvider with ChangeNotifier {
  String currentColorScheme;
  ThemeProvider({this.currentColorScheme = ''}) {
    getColor();
  }

  Future getColor() async {
    currentColorScheme = await ColorSave.getColor();
    notifyListeners();
  }

  void changeTheme(String color) async {
    currentColorScheme = color;
    await ColorSave.saveColor(currentColorScheme, true);
    notifyListeners();
  }
}

String hashedPassword(String password) {
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

void showSnackBar(
    BuildContext context, String message, bool isDestructive, bool isDark) {
  final snackBar = SnackBar(
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
    width: 380.0,
    duration: const Duration(seconds: 3),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: isDestructive
        ? Theme.of(context).colorScheme.errorContainer
        : isDark
            ? Colors.green.shade900
            : Colors.green.shade100,
    content: Text(
      message,
      style: TextStyle(
          color: isDestructive
              ? Theme.of(context).colorScheme.error
              : isDark
                  ? Colors.green.shade100
                  : Colors.green.shade900),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showMessageSnackBar(BuildContext context, String message, String actionVal,
    VoidCallback onPress) {
  final snackBar = SnackBar(
    dismissDirection: DismissDirection.horizontal,
    behavior: SnackBarBehavior.floating,
    width: 380.0,
    duration: const Duration(seconds: 3),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    backgroundColor: Theme.of(context).colorScheme.inverseSurface,
    content: Text(
      message,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onInverseSurface,
      ),
    ),
    action: SnackBarAction(label: actionVal, onPressed: onPress),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class Login {
  static const _loginKey = 'login';
  static const _passwordKey = 'password';
  static const _logoutKey = 'logout';
  static bool hasLoggedIn = false;
  static Future<void> saveLoginCredentials(
      String username, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_loginKey, username);
    prefs.setString(_passwordKey, password);
    prefs.setBool(_logoutKey, false);
  }

  static Future<bool> login() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    const String apiUri = 'https://weak-plum-indri-yoke.cyclic.app/login';
    Map<String, dynamic> data = {
      'username': prefs.getString(_loginKey),
      'password': prefs.getString(_passwordKey)
    };
    try {
      final response = await http.post(
        Uri.parse(apiUri),
        headers: {'Content-type': 'application/json'},
        body: jsonEncode(data),
      );
      if (response.statusCode == 200) {
        hasLoggedIn = true;
      } else {
        hasLoggedIn = false;
      }
    } catch (e) {
      hasLoggedIn = false;
    }
    return hasLoggedIn;
  }

  static Future<bool> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_logoutKey)!;
  }

  static Future<void> setLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_logoutKey, true);
  }
}

class ColorSave {
  static const _myColorKey = 'color';
  static const _myModeKey = 'brightness';
  static const defaultColor = 'yellow';
  static Future<void> saveColor(String color, bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_myColorKey, color);
    prefs.setBool(_myModeKey, isDarkMode);
  }

  static Future getColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? storedColor = prefs.getString(_myColorKey);
    return storedColor ?? defaultColor;
  }

  static Future<bool> getMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDarkmode = prefs.getBool(_myModeKey);
    return isDarkmode ?? true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print(context.watch<ThemeProvider>().currentColorScheme);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          lazy: false,
        ),
      ],
      child: Builder(builder: (context) {
        final colorScheme = context.watch<ThemeProvider>().currentColorScheme;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          darkTheme: ThemeData(
            colorScheme: MaterialTheme(themeColor: colorScheme).light(),
            useMaterial3: true,
          ),
          theme: ThemeData(
            colorScheme: MaterialTheme(themeColor: colorScheme).dark(),
            useMaterial3: true,
          ),
          home: FutureBuilder(
              future: Login.logout(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError || snapshot.data!) {
                    return const LoginPage();
                  } else {
                    return FutureBuilder(
                      future: Login.login(),
                      builder: (context, snapshot1) {
                        if (snapshot1.connectionState == ConnectionState.done) {
                          if (snapshot1.hasError || !snapshot1.data!) {
                            print('hit here');
                            return const LoginPage();
                          } else {
                            return const HomePage();
                          }
                        } else {
                          return Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Theme.of(context).colorScheme.background,
                            child: Center(
                              child: CircularProgressIndicator(
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          );
                        }
                      },
                    );
                  }
                } else {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(
                      child: CircularProgressIndicator(
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  );
                }
              }),
        );
      }),
    );
  }
}

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
                                  'https://weak-plum-indri-yoke.cyclic.app/login';
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
                                print(e);
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
                                  'https://weak-plum-indri-yoke.cyclic.app/create';
                              Map<String, dynamic> data = {
                                'name': name.text,
                                'email': email.text,
                                'username': usernname.text,
                                'password': hashedPassword(password.text),
                              };
                              print(apiUri);
                              try {
                                final response = await http.post(
                                    Uri.parse(apiUri),
                                    headers: {
                                      'Content-type': 'application/json'
                                    },
                                    body: jsonEncode(data));
                                print(response.statusCode);
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
                                print(error);
                              }
                            } else {
                              print('hitting else');
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle menuStyle =
      const TextStyle(fontWeight: FontWeight.normal, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Giga Chat',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            PopupMenuButton(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                offset: const Offset(0, 45),
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.settings,
                            size: 24.0,
                          ),
                          title: Text(
                            'Settings',
                            style: menuStyle,
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsPage())),
                      ),
                      PopupMenuItem(
                        child: ListTile(
                          leading: const Icon(
                            Icons.logout,
                            size: 24,
                          ),
                          title: Text(
                            'Logout',
                            style: menuStyle,
                          ),
                        ),
                        onTap: () async {
                          const String apiUri =
                              'https://weak-plum-indri-yoke.cyclic.app/logout';
                          Map<String, dynamic> data = {'message': 'logout'};
                          try {
                            final response = await http.post(
                              Uri.parse(apiUri),
                              headers: {'Content-type': 'application/json'},
                              body: jsonEncode(data),
                            );
                            print(jsonDecode(response.body));
                            if (jsonDecode(response.body)['message'] ==
                                'logout successful') {
                              Login.setLogout();
                              showSnackBar(
                                  context, 'Logged Out', true, isDarkMode);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ])
          ]),
      body: const Center(
        child: Text('Logged in'),
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double circleSize = 60;
  double circlePadding = 5;

  String action = 'Restart Now';
  String message = 'Restart app to apply the scheme';

  @override
  Widget build(BuildContext context) {
    final currentColorScheme =
        context.watch<ThemeProvider>().currentColorScheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 300,
                  minHeight: 260,
                  minWidth: double.infinity,
                  maxWidth: double.infinity),
              child: Column(
                children: <Widget>[
                  Text(
                    'Colors',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                          borderRadius: BorderRadius.circular(100000),
                          onTap: () {
                            context.read<ThemeProvider>().changeTheme('green');
                            setState(
                              () {
                                ColorSave.saveColor('green', true);
                              },
                            );
                          },
                          child: ColorCircle(
                            circlePadding: circlePadding,
                            circleSize: circleSize,
                            color: const Color(0xFF4caf50),
                            isSelected: currentColorScheme == 'green',
                          )),
                      InkWell(
                          borderRadius: BorderRadius.circular(100000),
                          onTap: () {
                            context.read<ThemeProvider>().changeTheme('blue');
                            setState(
                              () {
                                ColorSave.saveColor('blue', true);
                              },
                            );
                          },
                          child: ColorCircle(
                            circlePadding: circlePadding,
                            circleSize: circleSize,
                            color: const Color(0xFF2196f3),
                            isSelected: currentColorScheme == 'blue',
                          )),
                      InkWell(
                        borderRadius: BorderRadius.circular(100000),
                        onTap: () {
                          context.read<ThemeProvider>().changeTheme('orange');
                          setState(
                            () {
                              ColorSave.saveColor('orange', true);
                            },
                          );
                        },
                        child: ColorCircle(
                          circlePadding: circlePadding,
                          circleSize: circleSize,
                          color: const Color(0xFFff9800),
                          isSelected: currentColorScheme == 'orange',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        borderRadius: BorderRadius.circular(100000),
                        onTap: () {
                          context.read<ThemeProvider>().changeTheme('pink');
                          setState(
                            () {
                              ColorSave.saveColor('pink', true);
                            },
                          );
                        },
                        child: ColorCircle(
                          circlePadding: circlePadding,
                          circleSize: circleSize,
                          color: const Color(0xFFe91e63),
                          isSelected: currentColorScheme == 'pink',
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100000),
                        onTap: () {
                          context.read<ThemeProvider>().changeTheme('purple');
                          setState(
                            () {
                              ColorSave.saveColor('purple', true);
                            },
                          );
                        },
                        child: ColorCircle(
                          circlePadding: circlePadding,
                          circleSize: circleSize,
                          color: const Color(0xFF6750a4),
                          isSelected: currentColorScheme == 'purple',
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(100000),
                        onTap: () {
                          context.read<ThemeProvider>().changeTheme('yellow');
                          setState(
                            () {
                              ColorSave.saveColor('yellow', true);
                            },
                          );
                        },
                        child: ColorCircle(
                          circlePadding: circlePadding,
                          circleSize: circleSize,
                          color: const Color(0xFFffeb3b),
                          isSelected: currentColorScheme == 'yellow',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ColorCircle extends StatelessWidget {
  const ColorCircle(
      {super.key,
      required this.circlePadding,
      required this.circleSize,
      required this.color,
      required this.isSelected});
  final bool isSelected;
  final Color color;
  final double circlePadding;
  final double circleSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(circlePadding),
      child: Container(
        width: circleSize,
        height: circleSize,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100000), color: color),
        child: isSelected
            ? Icon(
                Icons.check,
                color: Theme.of(context).colorScheme.background,
              )
            : null,
      ),
    );
  }
}
