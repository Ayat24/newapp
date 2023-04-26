import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Item({Key? key, required this.ProjectName, required this.CompletedPercent})
      : super(key: key);
  late String ProjectName;
  late int CompletedPercent;
  @override
  Widget build(BuildContext context) {
    return const Container();
  }
}
