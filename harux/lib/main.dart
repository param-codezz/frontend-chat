// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:harux/pages/chatpage.dart';
import 'package:harux/theme.dart';
import 'package:harux/utils/services_utils.dart';
import 'package:harux/pages/login.dart';
import 'package:harux/pages/homepage.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   final MaterialTheme theme = const MaterialTheme();
//   @override
//   Widget build(BuildContext context) {
//     return Builder(builder: (context) {
//       return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         darkTheme: theme.dark(),
//         theme: theme.light(),
//         home: FutureBuilder(
//             future: Login.logout(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 if (snapshot.hasError || snapshot.data!) {
//                   return const LoginPage();
//                 } else {
//                   return FutureBuilder(
//                     future: Login.login(),
//                     builder: (context, snapshot1) {
//                       if (snapshot1.connectionState == ConnectionState.done) {
//                         if (snapshot1.hasError || !snapshot1.data!) {
//                           return const LoginPage();
//                         } else {
//                           return const HomePage();
//                         }
//                       } else {
//                         return Container(
//                           height: double.infinity,
//                           width: double.infinity,
//                           color: Theme.of(context).colorScheme.background,
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               backgroundColor: Theme.of(context)
//                                   .colorScheme
//                                   .primaryContainer,
//                               color: Theme.of(context).colorScheme.primary,
//                             ),
//                           ),
//                         );
//                       }
//                     },
//                   );
//                 }
//               } else {
//                 return Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   color: Theme.of(context).colorScheme.background,
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       backgroundColor:
//                           Theme.of(context).colorScheme.primaryContainer,
//                       color: Theme.of(context).colorScheme.primary,
//                     ),
//                   ),
//                 );
//               }
//             }),
//       );
//     });
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final MaterialTheme theme = const MaterialTheme();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Giga Chat",
      darkTheme: theme.dark(),
      theme: theme.light(),
      highContrastDarkTheme: theme.darkHighContrast(),
      highContrastTheme: theme.lightHighContrast(),
      home: const HomePage(),
    );
  }
}
