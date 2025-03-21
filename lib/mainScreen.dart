// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trans_module/BATTERY_INFO/battery_page.dart';
// import 'package:trans_module/CONSTANTS.dart';
// import 'package:trans_module/FUEL_FILLING/fuel_filling_page.dart';
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
//     {
//       'title': 'Battery Info',
//       'icon': Icons.battery_full,
//       'page': batteryInfoPage()
//     },
//     {
//       'title': 'Fuel Filling',
//       'icon': Icons.local_gas_station,
//       'page': FuelFillingPage()
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 100,
//             floating: false,
//             pinned: true,
//             // backgroundColor: Colors.green[900],
//             elevation: 8,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 'TRANSPORTATION',
//                 style: GoogleFonts.mitr(
//                     fontSize: 24,
//                     // color: const Color.fromARGB(255, 42, 128, 48),
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700),
//               ),
//               centerTitle: true,
//               background: Container(
//                 decoration: const BoxDecoration(
//                     // gradient: LinearGradient(
//                     //   colors: [Colors.green, Color.fromARGB(255, 57, 100, 72)],
//                     //   begin: Alignment.topLeft,
//                     //   end: Alignment.bottomRight,
//                     // ),
//                     ),
//               ),
//             ),
//           ),
//           SliverPadding(
//             padding: const EdgeInsets.all(16.0),
//             sliver: SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 12,
//                 mainAxisSpacing: 12,
//                 childAspectRatio: 0.9,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   return GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => menuItems[index]['page']),
//                         );
//                       },
//                       child: Container(
//                         width: 10,
//                         height: 10,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all()),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(menuItems[index]['icon'],
//                                 size: 30,
//                                 // color: Colors.green[900],
//                                 color: Colors.black),
//                             const SizedBox(height: 12),
//                             Text(
//                               menuItems[index]['title'],
//                               style: mainscreenTextStyle,
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                       )
//                       // Card(

//                       //   color: const Color.fromARGB(255, 63, 182, 99),
//                       //   elevation: 6,
//                       //   shadowColor: Colors.black45,
//                       //   shape: RoundedRectangleBorder(
//                       //     borderRadius: BorderRadius.circular(12),
//                       //   ),
//                       //   child: Column(
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     children: [
//                       //       Icon(menuItems[index]['icon'],
//                       //           size: 50,
//                       //           // color: Colors.green[900],
//                       //           color: Colors.black),
//                       //       const SizedBox(height: 12),
//                       //       Text(
//                       //         menuItems[index]['title'],
//                       //         style: mainscreenTextStyle,
//                       //         textAlign: TextAlign.center,
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       );
//                 },
//                 childCount: menuItems.length,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trans_module/BATTERY_INFO/battery_page.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_page.dart';
import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
import 'package:trans_module/REGISTRATION/reg_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Insurance', 'icon': Icons.security, 'page': Insurance_page()},
    {
      'title': 'Registration',
      'icon': Icons.app_registration,
      'page': RegistrationPage()
    },
    {
      'title': 'Battery Info',
      'icon': Icons.battery_full,
      'page': batteryInfoPage()
    },
    {
      'title': 'Fuel Filling',
      'icon': Icons.local_gas_station,
      'page': FuelFillingPage()
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
            elevation: 8,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'TRANSPORTATION',
                style: GoogleFonts.mitr(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              centerTitle: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 13,
                mainAxisSpacing: 13,
                childAspectRatio: 1.2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => menuItems[index]['page'],
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 63, 182, 99),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(3, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(menuItems[index]['icon'],
                              size: 35, color: Colors.black),
                          const SizedBox(height: 10),
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
