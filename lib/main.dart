import 'package:application/pages/nav_bar_screen.dart';
import 'package:application/providers/cart_providers.dart';
import 'package:application/providers/favorite_providers.dart';
import 'package:application/providers/user_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => CartProviders()),
        ChangeNotifierProvider(create: (_) => FavoriteProviders()),
        ChangeNotifierProvider(create: (_) => UserProviders())
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: child,
        ),
       ),
      child: const BottomNavBar());
}
}
