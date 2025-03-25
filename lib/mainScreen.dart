// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:trans_module/ACCIDENT/accident_page.dart';
// import 'package:trans_module/BATTERY_INFO/battery_page.dart';
// import 'package:trans_module/CHECK_LIST/check_list_page.dart';
// import 'package:trans_module/CONSTANTS.dart';
// import 'package:trans_module/FINE/fine_page.dart';
// import 'package:trans_module/FUEL_FILLING/fuel_filling_page.dart';
// import 'package:trans_module/GATE_PASS/gate_pass_page.dart';
// import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
// import 'package:trans_module/REGISTRATION/reg_page.dart';
// import 'package:trans_module/TOOLS_ISSUE/tools_issue_page.dart';
// import 'package:trans_module/TYRE_INFO/tyreInfo_page.dart';
// import 'package:trans_module/TYRE_PUNCHER/tyre_puncher_page.dart';

// class MainScreen extends StatelessWidget {
//   MainScreen({super.key});

//   final List<Map<String, dynamic>> menuItems = [
//     {
//       'title': 'Insurance',
//       'icon': 'assets/icons/insurance.png',
//       'page': Insurance_page()
//     },
//     {
//       'title': 'Registration',
//       'icon': 'assets/icons/registration.png',
//       'page': RegistrationPage()
//     },
//     {
//       'title': 'Battery Info',
//       'icon': 'assets/icons/info.png',
//       'page': batteryInfoPage()
//     },
//     {
//       'title': 'Fuel Filling',
//       'icon': 'assets/icons/gas.png',
//       'page': FuelFillingPage()
//     },
//         {
//       'title': 'Fine',
//       'icon': 'assets/icons/police.png',
//       'page': FinePage()
//     },
//     {
//       'title': 'Accident',
//       'icon': 'assets/icons/accident.png',
//       'page': AccidentPage()
//     },
//     {
//       'title': 'Tyre Info',
//       'icon': 'assets/icons/vehicle.png',
//       'page': TyreInfoPage()
//     },
//     {
//       'title': 'Tyre Puncher',
//       'icon': 'assets/icons/puncher.png',
//       'page': TyrePuncherPage()
//     },
//     {
//       'title': 'Tools Issue',
//       'icon': 'assets/icons/toolsissue.png',
//       'page': ToolsIssuePage()
//     },
//     {
//       'title': 'Check List',
//       'icon': 'assets/icons/checklist.png',
//       'page': CheckListPage()
//     },
//     {
//       'title': 'Gate Pass',
//       'icon': 'assets/icons/gate.png',
//       'page': GatePassPage()
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 29, 77, 37),
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             // backgroundColor: const Color.fromARGB(255, 85, 146, 85),
//             backgroundColor: const Color.fromARGB(255, 29, 77, 37),
//             expandedHeight: 100,
//             floating: false,
//             pinned: true,
//             elevation: 18,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 'TRANSPORTATION',
//                 style: GoogleFonts.lilitaOne(
//                     fontSize: 24,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400),
//               ),
//               centerTitle: true,
//             ),
//           ),
//           SliverPadding(
//             padding: const EdgeInsets.all(16.0),
//             sliver: SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
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
//                     child: AnimatedContainer(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color.fromARGB(255, 255, 255, 255)
//                                 .withOpacity(0.8),
//                             spreadRadius: 0,
//                             blurRadius: 0,
//                             offset: const Offset(1, 1),
//                           ),
//                         ],
//                       ),
//                       transform: Matrix4.identity()..scale(0.98),
//                       duration: Duration(milliseconds: 200),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             menuItems[index]['icon'],
//                             width: 50,
//                             height: 50,
//                             fit: BoxFit.contain,
//                             errorBuilder: (context, error, stackTrace) {
//                               return Icon(Icons.image_not_supported,
//                                   size: 50, color: Colors.red);
//                             },
//                           ),
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
    {'title': 'Fine', 'icon': 'assets/icons/police.png', 'page': FinePage()},
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
      body: Column(
        children: [
        
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 29, 77, 37),
            child: Center(
              child: Text(
                'TRANSPORTATION',
                style: GoogleFonts.lilitaOne(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),

          Expanded(
            child: PageView.builder(
              itemCount: (menuItems.length / 6).ceil(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, pageIndex) {
              
                final startIndex = pageIndex * 6;
                final endIndex = (startIndex + 6) > menuItems.length
                    ? menuItems.length
                    : (startIndex + 6);
                final items = menuItems.sublist(startIndex, endIndex);

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 13,
                      mainAxisSpacing: 13,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => items[index]['page'],
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: const Offset(1, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                items[index]['icon'],
                                width: 55,
                                height: 55,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.image_not_supported,
                                      size: 50, color: Colors.red);
                                },
                              ),
                              const SizedBox(height: 10),
                              Text(
                                items[index]['title'],
                                style: mainscreenTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
