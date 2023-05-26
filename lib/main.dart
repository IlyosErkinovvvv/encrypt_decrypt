import 'package:exchange_app/core/config/theme.dart';
import 'package:exchange_app/routes/router.dart';
import 'package:exchange_app/view/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // External packages initializations
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(
    // Initialize BLOC IN MAIN
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => HomeCubit()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeConfig.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.router.onGenerate,
    );
  }
}
