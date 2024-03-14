import 'package:flutter/material.dart';
import 'package:harux/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.username});
  final String username;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Hero(
          tag: "back",
          child: IconButton(
            icon: const Icon(Icons.chevron_left_rounded),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: "profile",
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Icon(
                  Icons.person_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 150,
                ),
              ),
            ),
            Hero(
              tag: "username",
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  widget.username,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Joined On: ',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "21 May 2023",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                  minWidth: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My bio is super long how youb gonna tackle this bwaahahahahaha",
                        style: MaterialTheme.bioText(context),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "19 Aug 2023",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.delete,
                            size: 40,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Delete",
                            style: MaterialTheme.errorTextLabel(context),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            size: 40,
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Share",
                            style: MaterialTheme.chatTitle(context),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
