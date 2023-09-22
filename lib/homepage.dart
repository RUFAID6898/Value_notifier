import 'package:flutter/material.dart';
import 'package:flutter_application_valunotifare/call.dart';
import 'package:flutter_application_valunotifare/chat.dart';
import 'package:flutter_application_valunotifare/status.dart';
// import 'package:flutter_application_valunotifare/call.dart';
// import 'package:flutter_application_valunotifare/chat.dart';
// import 'package:flutter_application_valunotifare/status.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List scren = [Chat(), Status(), Call()];
  ValueNotifier notifat = ValueNotifier(0);

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: notifat,
        builder: (context, value, _) {
          return Scaffold(
            body: scren[value],
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_checkout_outlined),
                    label: 'cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'setting'),
              ],
              currentIndex: notifat.value,
              onTap: (value) {
                notifat.value = value;
              },
            ),
          );
        },
      );
}
