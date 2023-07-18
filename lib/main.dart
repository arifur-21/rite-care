import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ritecare_hms/local_db/search_user_model.dart';
import 'package:ritecare_hms/screens/languages/languages_screen.dart';
import 'package:ritecare_hms/screens/login_screen/sign_in_screen.dart';
import 'package:ritecare_hms/screens/login_screen/slider_screen/slider_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(SearchUserModelAdapter());
  await Hive.openBox<SearchUserModel>('search_user');

  SharedPreferences sp = await SharedPreferences.getInstance();
  initScreen = await sp.getInt('initScreen');
  await sp.setInt('initScreen', 1);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      fallbackLocale: Locale('en', 'US'),
      locale: Locale('bn', 'BD'),

      initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'home': (context) => SignInScreen(),
        'onboard': (context) => SliderScreen(),
      },

      //   getPages: AppRoutes.appRoutes(),
    );
  }
}
