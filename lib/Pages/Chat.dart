import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({required Key key}) : super(key: key);

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
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
                  AssetImage('assets/images/Chat_Icon.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
