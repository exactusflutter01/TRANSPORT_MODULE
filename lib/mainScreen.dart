// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trans_module/ACCIDENT/accident_page.dart';
// import 'package:trans_module/BATTERY_INFO/battery_page.dart';
// import 'package:trans_module/CONSTANTS.dart';
// import 'package:trans_module/FINE/fine_page.dart';
// import 'package:trans_module/FUEL_FILLING/fuel_filling_page.dart';
// import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
// import 'package:trans_module/REGISTRATION/reg_page.dart';
// import 'package:trans_module/TYRE_INFO/tyreInfo_page.dart';

// class MainScreen extends StatelessWidget {
//   MainScreen({super.key});

//   final List<Map<String, dynamic>> menuItems = [
//     {'title': 'Insurance', 'icon': Icons.security, 'page': Insurance_page()},
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
//     {'title': 'Accident', 'icon': Icons.car_crash, 'page': AccidentPage()},
//     {'title': 'Tyre Info', 'icon': Icons.tire_repair, 'page': TyreInfoPage()},
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
//             elevation: 8,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 'TRANSPORTATION',
//                 style: GoogleFonts.mitr(
//                     fontSize: 24,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w700),
//               ),
//               centerTitle: true,
//             ),
//           ),
//           SliverPadding(
//             padding: const EdgeInsets.all(16.0),
//             sliver: SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 13,
//                 mainAxisSpacing: 13,
//                 childAspectRatio: 1.2,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => menuItems[index]['page'],
//                         ),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 63, 182, 99),
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.3),
//                             spreadRadius: 2,
//                             blurRadius: 5,
//                             offset: const Offset(3, 3),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(menuItems[index]['icon'],
//                               size: 32, color: Colors.black),
//                           const SizedBox(height: 10),
//                           Text(
//                             menuItems[index]['title'],
//                             style: mainscreenTextStyle,
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
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
import 'package:trans_module/ACCIDENT/accident_page.dart';
import 'package:trans_module/BATTERY_INFO/battery_page.dart';
import 'package:trans_module/CHECK_LIST/check_list_page.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FINE/fine_page.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_page.dart';
import 'package:trans_module/GATE_PASS/gate_pass_page.dart';
import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
import 'package:trans_module/REGISTRATION/reg_page.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_page.dart';
import 'package:trans_module/TYRE_INFO/tyreInfo_page.dart';
import 'package:trans_module/TYRE_PUNCHER/tyre_puncher_page.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Map<String, dynamic>> menuItems = [
    {
      'title': 'Insurance',
      'icon': 'assets/icons/insurance.png',
      'page': Insurance_page()
    },
    {
      'title': 'Registration',
      'icon': 'assets/icons/registration.png',
      'page': RegistrationPage()
    },
    {
      'title': 'Battery Info',
      'icon': 'assets/icons/info.png',
      'page': batteryInfoPage()
    },
    {
      'title': 'Fuel Filling',
      'icon': 'assets/icons/gas.png',
      'page': FuelFillingPage()
    },
    {
      'title': 'Accident',
      'icon': 'assets/icons/accident.png',
      'page': AccidentPage()
    },
    {
      'title': 'Tyre Info',
      'icon': 'assets/icons/vehicle.png',
      'page': TyreInfoPage()
    },
    {
      'title': 'Tyre Puncher',
      'icon': 'assets/icons/puncher.png',
      'page': TyrePuncherPage()
    },
    {
      'title': 'Tools Issue',
      'icon': 'assets/icons/toolsissue.png',
      'page': ToolsIssuePage()
    },
    {
      'title': 'Check List',
      'icon': 'assets/icons/checklist.png',
      'page': CheckListPage()
    },
    {
      'title': 'Gate Pass',
      'icon': 'assets/icons/gate.png',
      'page': GatePassPage()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 77, 37),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: const Color.fromARGB(255, 85, 146, 85),
            backgroundColor: const Color.fromARGB(255, 29, 77, 37),
            expandedHeight: 100,
            floating: false,
            pinned: true,
            elevation: 18,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'TRANSPORTATION',
                style: GoogleFonts.lilitaOne(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              centerTitle: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
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
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.8),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                      transform: Matrix4.identity()..scale(0.98),
                      duration: Duration(milliseconds: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            menuItems[index]['icon'],
                            width: 35,
                            height: 35,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.image_not_supported,
                                  size: 50, color: Colors.red);
                            },
                          ),
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
