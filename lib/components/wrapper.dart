library base_templates;

import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final bool scrollable;

  const Wrapper({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.scrollable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: scrollable
            ? SingleChildScrollView(
                padding: padding,
                child: child,
              )
            : Padding(
                padding: padding,
                child: child,
              ),
      ),
    );
  }
}
