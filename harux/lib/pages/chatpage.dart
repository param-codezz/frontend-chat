import 'package:flutter/material.dart';
import 'package:harux/pages/profilepage.dart';
import 'package:harux/theme.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.username});
  final String username;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ScrollController scrollController = ScrollController();
  final FocusNode textFieldFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          (MediaQuery.of(context).platformBrightness == Brightness.dark)
              ? const Color(0xFF00161B)
              : Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor:
            (MediaQuery.of(context).platformBrightness == Brightness.dark)
                ? const Color(0xFF00161B)
                : Theme.of(context).colorScheme.background,
        titleSpacing: 0,
        leading: Hero(
          tag: "back",
          child: IconButton(
            icon: Icon(
              Icons.chevron_left_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(username: widget.username),
            ),
          ),
          child: Row(
            children: [
              Hero(
                tag: "profile",
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Icon(
                    Icons.person_rounded,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 27,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Hero(
                tag: "username",
                child: Text(
                  widget.username,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            tooltip: "Chat Menu",
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 64),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: false),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message:
                            "vondfngfjkndkjgndjkgdfjgbdfgkdffghdfbhdfbhhdhbddfnnsgkjlsdkdsbgkhdsfnjvnjncvnvvncjvncjvncjvncjvncjvncjnvcjvncjvncjvncjvncjvncjvncjnvjcvnjcvnjcnvjcnvjcnvjcvnjcnvjcvncjnvcjvncjvncjvncjvncjvncjvnjcnvjcnvjcvnjcnvjcvnjcvncjvncjvnbgjsgbdsjhbjhbdsjgbdkgjdbgkhdsg",
                        isLeft: true,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "message",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                    SentMessage(
                        message: "",
                        isLeft: false,
                        error: false,
                        isTrailing: true),
                  ]),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark)
                      ? const Color(0xFF00161B)
                      : Theme.of(context).colorScheme.background,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(1000000),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.83,
                        child: TextField(
                          focusNode: textFieldFocusNode,
                          autocorrect: true,
                          cursorColor: Theme.of(context).colorScheme.primary,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 18,
                            ),
                            border: InputBorder.none,
                            filled: true,
                            fillColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            hintText: 'Message',
                            hintStyle: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                              fontWeight: FontWeight.w400,
                            ),
                            hintFadeDuration: Durations.medium1,
                          ),
                        ),
                      ),
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      iconSize: 24,
                      padding: const EdgeInsets.all(12),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
    textFieldFocusNode.addListener(() {
      if (textFieldFocusNode.hasFocus) {
        scrollController.jumpTo((MediaQuery.of(context).size.height));
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    textFieldFocusNode.dispose();
    super.dispose();
  }
}

class SentMessageStreamBuilder extends StatefulWidget {
  const SentMessageStreamBuilder({super.key});

  @override
  State<SentMessageStreamBuilder> createState() =>
      _SentMessageStreamBuilderState();
}

class _SentMessageStreamBuilderState extends State<SentMessageStreamBuilder> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SentMessage extends StatefulWidget {
  const SentMessage(
      {super.key,
      required this.message,
      required this.error,
      required this.isTrailing,
      required this.isLeft});
  final String message;
  final bool error;
  final bool isTrailing;
  final bool isLeft;
  @override
  State<SentMessage> createState() => _SentMessageState();
}

class _SentMessageState extends State<SentMessage> {
  @override
  Widget build(BuildContext context) {
    return widget.isLeft
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onLongPress: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: (MediaQuery.of(context).platformBrightness ==
                                Brightness.dark)
                            ? const Color(0xFF181C1E)
                            : const Color(0xFFF7F2FA),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 32,
                            color: Color(0x44000000),
                            offset: Offset(0, -10),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.delete,
                                          size: 40,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                        Text(
                                          "  Delete  ",
                                          style: MaterialTheme.actionButtonText(
                                              context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.forward_rounded,
                                          size: 40,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                        Text(
                                          "Forward",
                                          style: MaterialTheme.actionButtonText(
                                              context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Column(
                              children: [
                                Text(
                                  "Quick Forward",
                                  style:
                                      MaterialTheme.actionButtonText(context),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ContactIcon(contactName: "Param"),
                                    ContactIcon(contactName: "Dhwanit"),
                                    ContactIcon(contactName: "Yash"),
                                    ContactIcon(contactName: "Krutik")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                    minWidth: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: widget.isTrailing
                          ? const BorderRadius.horizontal(
                              left: Radius.circular(3),
                              right: Radius.circular(12),
                            )
                          : const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(3),
                              bottomRight: Radius.circular(12),
                            ),
                    ),
                    child: Text(
                      widget.message,
                      style: MaterialTheme.recievedMessageBody(context),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onLongPress: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: (MediaQuery.of(context).platformBrightness ==
                                Brightness.dark)
                            ? const Color(0xFF181C1E)
                            : const Color(0xFFF7F2FA),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 32,
                            color: Color(0x44000000),
                            offset: Offset(0, -10),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.delete,
                                          size: 40,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                        Text(
                                          "  Delete  ",
                                          style: MaterialTheme.actionButtonText(
                                              context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.forward_rounded,
                                          size: 40,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant,
                                        ),
                                        Text(
                                          "Forward",
                                          style: MaterialTheme.actionButtonText(
                                              context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            Column(
                              children: [
                                Text(
                                  "Quick Forward",
                                  style:
                                      MaterialTheme.actionButtonText(context),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ContactIcon(contactName: "Param"),
                                    ContactIcon(contactName: "Dhwanit"),
                                    ContactIcon(contactName: "Yash"),
                                    ContactIcon(contactName: "Krutik")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                    minWidth: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      gradient: widget.error
                          ? null
                          : LinearGradient(
                              colors:
                                  (MediaQuery.of(context).platformBrightness ==
                                          Brightness.dark)
                                      ? [
                                          const Color(0xFF87D1EB),
                                          const Color(0xFF54B1E6),
                                        ]
                                      : [
                                          const Color(0xFF488F9F),
                                          const Color(0xFF04677E),
                                        ],
                            ),
                      color: widget.error
                          ? Theme.of(context).colorScheme.error
                          : null,
                      borderRadius: widget.isTrailing
                          ? const BorderRadius.horizontal(
                              left: Radius.circular(12),
                              right: Radius.circular(3),
                            )
                          : const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(3),
                            ),
                    ),
                    child: Text(
                      widget.message,
                      style: widget.error
                          ? MaterialTheme.sentMessageBodyError(context)
                          : MaterialTheme.sentMessageBody(context),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key, required this.contactName});
  final String contactName;
  final double radius = 28;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SizedBox(
        child: Column(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundColor:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark)
                      ? const Color(0xFF359138)
                      : const Color(0xFF1B4B1D),
              foregroundColor:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark)
                      ? const Color(0xFFB8FFBA)
                      : const Color(0xFFC5FFC7),
              child: Icon(
                Icons.person_rounded,
                size: radius * 1.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              contactName,
              style: MaterialTheme.contactButtonText(context),
            ),
          ],
        ),
      ),
    );
  }
}
