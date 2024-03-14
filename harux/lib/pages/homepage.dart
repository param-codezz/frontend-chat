// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:harux/pages/chatpage.dart';
import 'package:harux/theme.dart';
import 'package:harux/utils/services_utils.dart';
import 'package:harux/utils/ui_utils.dart';
import 'package:harux/pages/login.dart';
import 'package:http/http.dart' as http;

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
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      appBar: AppBar(
          title: Text(
            'Giga Chat',
            style: MaterialTheme.appBar(context),
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
                                builder: (context) => const HomePage())),
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
                              'https://backend-hosting-production.up.railway.app/logout';
                          Map<String, dynamic> data = {'message': 'logout'};
                          try {
                            final response = await http.post(
                              Uri.parse(apiUri),
                              headers: {'Content-type': 'application/json'},
                              body: jsonEncode(data),
                            );
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
                            log(e.toString());
                          }
                        },
                      ),
                    ])
          ]),
      body: const ChatList(),
    );
  }
}

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List dummyUsers = [
    // [
    ////   'green<Color>',
    //   'username<String>',
    //   'lastMessage<String>',
    //   'timestamp<time>',
    //   'newMessage<bool>'
    // ]
    ['user123', 'Meeting at 9pm', '8:12am'],
    ['bhupendra69', 'Pull up homie', 'Yesterday'],
    ['vk18', 'Century pakka is baar', 'Yesterday'],
    ['chapri777', 'Thala OP', 'Yesterday'],
  ];
  List<Color> colors = [Colors.red, Colors.green, Colors.orange, Colors.pink];
  List<bool> isNewMessage = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyUsers.length,
      itemBuilder: (context, index) {
        return ChatTitle(
          colors: colors[index],
          userData: dummyUsers[index],
          isNewMessage: isNewMessage[index],
        );
      },
    );
  }
}

class ChatTitle extends StatelessWidget {
  const ChatTitle({
    super.key,
    required this.colors,
    required this.userData,
    required this.isNewMessage,
  });
  final List<dynamic> userData;
  final Color colors;
  final bool isNewMessage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(username: userData[0]),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: colors,
        child: Icon(
          Icons.person_rounded,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      title: Text(
        userData[0],
        style: MaterialTheme.chatTitle(context),
      ),
      subtitle: Text(userData[1]),
      trailing: SizedBox(
        width: 80,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              (isNewMessage)
                  ? Text(
                      userData[2],
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 14,
                      ),
                    )
                  : Text(
                      userData[2],
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
              (isNewMessage)
                  ? CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text(
                        '1',
                        style: MaterialTheme.chatBubble(context),
                      ),
                    )
                  : Container(),
            ]),
      ),
    );
  }
}
