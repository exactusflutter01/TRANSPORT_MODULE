import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trans_module/ACCIDENT/ACCIDENT_BLOC/accident_bloc.dart';
import 'package:trans_module/ACCIDENT/accident_repository.dart';
import 'package:trans_module/FINE/bloc/fine_bloc_bloc.dart';
import 'package:trans_module/FINE/repository.dart';
import 'package:trans_module/FUEL_FILLING/FUEL_BLOC/fuel_bloc.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/INSURANCE/REPO/insu_repository.dart';
import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';
import 'package:trans_module/TOOLS_ISSUE/TOOLS_BLOC/tools_bloc.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_repository.dart';
import 'package:trans_module/mainScreen.dart';
import 'package:trans_module/REGISTRATION/reg_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => Insurance_Repo()),
        RepositoryProvider(create: (context) => FuelFillingRepository()),
        RepositoryProvider(create: (context) => RegRepository()),
      
        RepositoryProvider(create: (context) => FineRepository()), 
        RepositoryProvider(create: (context) => AccidentRepository()), 
        RepositoryProvider(create: (context) => ToolsIssueRepository()), 
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InsuBloc(context.read<Insurance_Repo>()),
          ),
          BlocProvider(
            create: (context) => FineBlocBloc(context.read<FineRepository>()),
          ),
          BlocProvider(
            create: (context) =>
                FuelBloc(context.read<FuelFillingRepository>()),
          ),
          BlocProvider(
            create: (context) => RegBloc(context.read<RegRepository>()),
          ),
          BlocProvider(
            create: (context) => AccidentBloc(context.read<AccidentRepository>()),
          ),
          BlocProvider(
            create: (context) => ToolsBloc(context.read<ToolsIssueRepository>()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, child) => ResponsiveBreakpoints(breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          ], child: child!),
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: MainScreen(),
        ),
      ),
    );
  }
}
