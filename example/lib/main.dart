import 'package:flutter/material.dart';
import 'package:sagu_brand/brand.dart';

import 'pages/main/main.view.page.dart';

void main(){
  runApp(BrandApp());
}

class BrandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Sagu.dark,
        accentColor: Sagu.complementary,
        errorColor: Sagu.orange,
        scaffoldBackgroundColor: Sagu.scaffoldColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainViewPage(),
    );
  }
}
