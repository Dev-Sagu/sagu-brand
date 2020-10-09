import 'package:flutter/material.dart';
import 'package:sagu_brand/brand.dart';

class MainViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sagu Brand"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Primary Color", style: Theme.of(context).textTheme.headline6.copyWith(color: Sagu.primary),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BoxColor(color: Sagu.primary,),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Secondary Color", style: Theme.of(context).textTheme.headline6.copyWith(color: Sagu.secondary),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BoxColor(color: Sagu.secondary,),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Complementary(success) Color", style: Theme.of(context).textTheme.headline6.copyWith(color: Sagu.complementary),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BoxColor(color: Sagu.complementary,),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Dark Color", style: Theme.of(context).textTheme.headline6.copyWith(color: Sagu.dark),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BoxColor(color: Sagu.dark,),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Orange(danger) Color", style: Theme.of(context).textTheme.headline6.copyWith(color: Sagu.orange),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BoxColor(color: Sagu.orange,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 400,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        itemCount: Sagu.colors.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10
                        ),
                        itemBuilder: (context, index) {
                          return LinearPairColors(linear: Sagu.colors[index],);
                        },
                      ),
                    )
                  ],
     ),
              ),
            ),
          ),
        ],
      ),
   );
  }
}
final shades = [900,800,700,600,500,400,300,200,100,50];

class BoxColor extends StatelessWidget {
  final MaterialColor color;

  const BoxColor({Key key,@required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shades.length,
        itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: color[shades[index]],
              height: 40,
              width: 40,
            ),
            color.value.compareTo(color[shades[index]].value) == 0 ?
              Text("${shades[index]}", style: TextStyle(fontSize: 8, fontWeight: FontWeight.w900),):
              Text("${shades[index]}", style: TextStyle(fontSize: 8,),),
          ],
        );
      }),
    );
  }
}

class LinearPairColors extends StatelessWidget {
  final List<Color> linear;

  const LinearPairColors({Key key,@required this.linear}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Center(child: Text(linear.toString(), style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)) ,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: linear,
          begin: Alignment.bottomLeft,
          // end: Alignment.topRight
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2)
          )
        ]
      ),
    );
  }
}
