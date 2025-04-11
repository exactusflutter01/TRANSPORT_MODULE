
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
import 'package:trans_module/REPAIR/repair_page.dart';
import 'package:trans_module/SERVICE/service_page.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_page.dart';
import 'package:trans_module/TYRE_INFO/tyreInfo_page.dart';
import 'package:trans_module/WORK_SHOP/work_shop_page.dart';

import 'TYRE_PUNCTURE/puncture_page.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
final List<Map<String, dynamic>> menuItemsPage1 = [
  {'title': 'Insurance', 'icon': 'assets/icons/insurance.png', 'page': Insurance_page()},
  {'title': 'Registration', 'icon': 'assets/icons/registration.png', 'page': RegistrationPage()},
  {'title': 'Battery Info', 'icon': 'assets/icons/info.png', 'page': batteryInfoPage()},
  {'title': 'Fuel Filling', 'icon': 'assets/icons/gas.png', 'page': FuelFillingPage()},
  {'title': 'Fine', 'icon': 'assets/icons/police.png', 'page': FinePage()},
  {'title': 'Accident', 'icon': 'assets/icons/accident.png', 'page': AccidentPage()},
  {'title': 'Tyre Info', 'icon': 'assets/icons/vehicle.png', 'page': TyreInfoPage()},
  {'title': 'Tyre\nPuncture', 'icon': 'assets/icons/puncher.png', 'page': TyrePuncturePage()},
  {'title': 'Tools Issue', 'icon': 'assets/icons/toolsissue.png', 'page': ToolsIssuePage()},
  {'title': 'Check List', 'icon': 'assets/icons/checklist.png', 'page': CheckListPage()},
   {'title': 'Gate Pass', 'icon': 'assets/icons/gate.png', 'page': GatePassPage()},
  {'title': 'Service', 'icon': 'assets/icons/customer-service.png', 'page': ServicePage()},
    {'title': 'Workshop ', 'icon': 'assets/icons/business-presentation.png', 'page': WorkShopPage()},
  {'title': 'Repair', 'icon': 'assets/icons/repair-tools.png', 'page': RepairPage()},
];

final List<Map<String, dynamic>> menuItemsPage2 = [
 

];

  @override
  Widget build(BuildContext context) {
    
   

    return Scaffold(
      backgroundColor: commonColor,
      appBar: AppBar(
        backgroundColor: commonColor,
        title: const Text('Menu',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      body: PageView(
  children: [
    MenuGrid(menuItems: menuItemsPage1),
    // MenuGrid(menuItems: menuItemsPage2),
  ],
)
    );
  }
}

class MenuGrid extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems;

  const MenuGrid({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final item = menuItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => item['page']),
            );
          },
          child: Container(
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
             color:Colors.white,
           ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item['icon'], width: 50, height: 50),
                const SizedBox(height: 8),
                Text(
                  item['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

