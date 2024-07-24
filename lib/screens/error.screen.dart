import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key, required this.error, required this.tryAgain});
  final String error;
  final Function() tryAgain;
  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  void initState() {
    // ignore: avoid_print
    print(widget.error);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Something went wrong", overflow: TextOverflow.ellipsis),
        TextButton(
            onPressed: widget.tryAgain, child: const Text("Try again", style: TextStyle(fontWeight: FontWeight.bold)))
      ],
    ));
  }
}
