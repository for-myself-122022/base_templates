library base_templates;

import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const Wrapper({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
