// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_state_manager/bloc_pattern/bloc_pattern_page.dart';
import 'package:flutter_state_manager/change_notifier/change_notifier_page.dart';
import 'package:flutter_state_manager/value_notifier/value_notifier_page.dart';

import 'setState/imc_setstate_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goTopage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goTopage(context, ImcSetstatePage()),
              child: Text(
                'SetState',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
            ElevatedButton(
              onPressed: () => _goTopage(context, ValueNotifierPage()),
              child: Text(
                'ValueNotifier',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
            ElevatedButton(
              onPressed: () => _goTopage(context, ChangeNotifierPage()),
              child: Text(
                'ChangeNotifier',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
            ElevatedButton(
              onPressed: () => _goTopage(context, BlocPatternPage()),
              child: Text(
                'bloc Pattern (Stream)',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
