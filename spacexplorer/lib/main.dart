import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spacexplorer/providers/spacex.dart';
import 'package:spacexplorer/screens/appscaffold.dart';
import 'package:spacexplorer/screens/company_screen.dart';
import 'package:provider/provider.dart';
import 'package:spacexplorer/screens/dragon_screen.dart';
import 'package:spacexplorer/screens/launches_screen.dart';
import 'package:spacexplorer/screens/rocket_screen.dart';
import 'package:spacexplorer/screens/starlink_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // adding app overlay transparent
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SpaceX(),
        )
      ],
      child: Consumer<SpaceX>(
        builder: (ctx, spaceXdata, _) => MaterialApp(
          title: 'SpaceXplorer',
          home: AppScaffold(),
          debugShowCheckedModeBanner: false,
          routes: {
            CompanyScreen.routeName: (ctx) => CompanyScreen(),
            RocketScreen.routeName: (ctx) => RocketScreen(),
            DragonScreen.routeName: (ctx) => DragonScreen(),
            LaunchesScreen.routeName: (ctx) => LaunchesScreen(),
            StarlinkScreen.routeName: (ctx) => StarlinkScreen()
          },
        ),
      ),
    );
  }
}
