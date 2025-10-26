import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context, Widget child) {
  showModalBottomSheet(
    context: context,
    builder: (context) => child,
  );

}
