import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Platform.isIOS
        ? CupertinoButton(
            color: theme.primaryColor,
            child: Text(
              this.text,
              style: TextStyle(
                fontFamily: theme.textTheme.title?.fontFamily,
              ),
            ),
            onPressed: this.handler,
          )
        : TextButton(
            child: Text(
              'Choose Date',
              style: TextStyle(
                fontFamily: theme.textTheme.title?.fontFamily,
              ),
            ),
            onPressed: this.handler,
            style: ElevatedButton.styleFrom(
              onPrimary: theme.primaryColor,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
