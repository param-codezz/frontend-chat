import 'package:flutter/material.dart';

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

