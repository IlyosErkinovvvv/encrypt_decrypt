import 'package:flutter/material.dart';

class StandartPadding extends StatelessWidget {
  final Widget child;
  const StandartPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
      ),
      child: child,
    );
  }
}
