import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TestpageWidget extends StatefulWidget {
   TestpageWidget({required Key key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  _TestpageWidgetState createState() => _TestpageWidgetState();
}

class _TestpageWidgetState extends State<TestpageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Colors.green,
        elevation: 8,
      ),
      body: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                ImageIcon(
                  AssetImage('assets/images/settings_icon.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
