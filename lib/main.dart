import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasbex_app/presentation/home_screen/home_screen.dart';
import 'package:tasbex_app/view_model/home_screen_view_model.dart';
import 'package:tasbex_app/data/local/local_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalDatabase localDatabase = LocalDatabase();
  await localDatabase.initializeDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeScreenViewModel(LocalDatabase()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
