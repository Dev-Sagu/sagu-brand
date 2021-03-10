import 'package:flutter/material.dart';

class AppBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "Awesome Name App",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PreferredSizePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 80.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.pink],
            ),
          ),
          child: AppBarContent(),
        ),
      ),
      body: Center(
        child: Text("Awesome content"),
      ),
    );
  }
}
// class PreferredSizePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size(double.infinity, 100.0),
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.blue, Colors.pink],
//               ),
//             ),
//             child: SafeArea(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Awesome App",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           Spacer(),
//                           IconButton(
//                             icon: Icon(
//                               Icons.search,
//                               size: 20,
//                             ),
//                             color: Colors.white,
//                             onPressed: () {},
//                           ),
//                           IconButton(
//                             icon: Icon(
//                               Icons.more_vert,
//                               size: 20,
//                             ),
//                             color: Colors.white,
//                             onPressed: () {},
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   TabBar(
//                     tabs: [
//                       Icon(
//                         Icons.camera,
//                         size: 20,
//                       ),
//                       Tab(
//                         text: "Tab 1",
//                       ),
//                       Tab(
//                         text: "Tab 2",
//                       ),
//                       Tab(
//                         text: "Tab 3",
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Center(
//               child: Text("Content for Camera"),
//             ),
//             Center(
//               child: Text("Content for tab 1"),
//             ),
//             Center(
//               child: Text("Content for tab 2"),
//             ),
//             Center(
//               child: Text("Content for tab 3"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
