// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trans_module/CONSTANTS.dart';
// import 'package:trans_module/INSURANCE/insu_page.dart';
// import 'package:trans_module/REGISTRATION/reg_page.dart';

// class MainScreen extends StatelessWidget {
//   MainScreen({super.key});

//   final List<Map<String, dynamic>> menuItems = [
//     {'title': 'Insurance', 'icon': Icons.security, 'page': Homepage()},
//     {
//       'title': 'Registration',
//       'icon': Icons.app_registration,
//       'page': RegistrationPage()
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // backgroundColor: Colors.green[100],
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(100),
//           child: AppBar(
//             title: Text('Transportation',
//                 style: GoogleFonts.luckiestGuy(
//                   // fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 19, 99, 22),
//                   fontSize: 25,
//                 )),
//             // backgroundColor: const Color.fromARGB(255, 19, 99, 22),
//             backgroundColor: Colors.white,
//             // centerTitle: true,
//             elevation: 8,
//             centerTitle: true,
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 12,
//                     mainAxisSpacing: 12,
//                     childAspectRatio: 0.9,
//                   ),
//                   itemCount: menuItems.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => menuItems[index]['page']),
//                         );
//                       },
//                       child: Card(
//                         color: Colors.white,
//                         elevation: 6,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               menuItems[index]['icon'],
//                               size: 60,
//                               color: Color.fromARGB(255, 19, 99, 22),
//                             ),
//                             const SizedBox(height: 12),
//                             Text(
//                               menuItems[index]['title'],
//                               style: mainscreenTextStyle,
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/INSURANCE/insu_page.dart';
import 'package:trans_module/REGISTRATION/reg_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Insurance', 'icon': Icons.security, 'page': Homepage()},
    {
      'title': 'Registration',
      'icon': Icons.app_registration,
      'page': RegistrationPage()
    },
    {
      'title': 'Battery Info',
      'icon': Icons.app_registration,
      'page': RegistrationPage()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: false,
            pinned: true,
            // backgroundColor: Colors.green[900],
            elevation: 8,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'TRANSPORTATION',
                style: GoogleFonts.mitr(
                    fontSize: 24,
                    // color: const Color.fromARGB(255, 42, 128, 48),
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              centerTitle: true,
              background: Container(
                decoration: const BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [Colors.green, Color.fromARGB(255, 57, 100, 72)],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                    ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => menuItems[index]['page']),
                      );
                    },
                    child: Card(
                      color: const Color.fromARGB(255, 63, 182, 99),
                      elevation: 6,
                      shadowColor: Colors.black45,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(menuItems[index]['icon'],
                              size: 60,
                              // color: Colors.green[900],
                              color: Colors.black),
                          const SizedBox(height: 12),
                          Text(
                            menuItems[index]['title'],
                            style: mainscreenTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: menuItems.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
