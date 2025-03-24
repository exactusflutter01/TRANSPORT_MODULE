import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trans_module/FUEL_FILLING/FUEL_BLOC/fuel_bloc.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/INSURANCE/REPO/insu_repository.dart';
import 'package:trans_module/INSURANCE/SCREENS/insu_page.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';
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
        RepositoryProvider(
            create: (context) => FuelFillingRepository()), // Moved here
        RepositoryProvider(create: (context) => RegRepository()), // Moved here
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InsuBloc(context.read<Insurance_Repo>()),
          ),
          BlocProvider(
            create: (context) =>
                FuelBloc(context.read<FuelFillingRepository>()), // Corrected
          ),
          BlocProvider(
            create: (context) => RegBloc(context.read<RegRepository>()),
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
