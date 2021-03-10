import 'package:flutter/material.dart';

class PreferredSizePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          // color: Theme.of(context).accentColor,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow[200]!, Colors.pink[100]!]),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            // brightness: Brightness.light,
            elevation: 0,
          ),
          // backgroundColor: Theme.of(context).accentColor,
          // elevation: 0,
          // brightness: Brightness.light,
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   width: double.infinity,
          //   height: 200,
          //   color: Theme.of(context).accentColor,
          // ),
          Center(
            child: Text("Awesome Content"),
          ),
        ],
      ),
    );
  }
}
