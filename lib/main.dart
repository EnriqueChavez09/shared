import 'package:flutter/material.dart';
import 'package:shared/global/global.dart';
import 'package:shared/routes/routes.dart';
import 'package:shared/utils/sp_glogal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SPGlobal spGlobal = SPGlobal();
  await spGlobal.initSharedPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: normalPhoneTheme,
      routes: appRoutes,
      initialRoute: 'home',
    );
  }
}
