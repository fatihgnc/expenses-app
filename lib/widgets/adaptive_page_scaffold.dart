import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptivePageScaffold extends StatelessWidget {
  final SafeArea pageBody;
  final dynamic appBar;
  final Function addNewTx;

  AdaptivePageScaffold(this.pageBody, this.appBar, this.addNewTx);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageScaffold(
            child: pageBody,
            navigationBar: appBar,
          )
        : Scaffold(
            appBar: appBar,
            body: pageBody,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Platform.isIOS
                ? Container()
                : FloatingActionButton(
                    child: Icon(
                      Icons.add,
                    ),
                    onPressed: () => this.addNewTx(context),
                  ),
          );
  }
}
