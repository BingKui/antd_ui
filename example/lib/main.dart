import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Must add this line.
  await windowManager.ensureInitialized();
  // Use it only after calling `hiddenWindowAtLaunch`
  windowManager.waitUntilReadyToShow().then((_) async {
    // Set to frameless window
    await windowManager.setAsFrameless();
    await windowManager.setSize(const Size(600, 600));
    // await windowManager.setPosition(Offset.zero);
    await windowManager.setHasShadow(true);
    await windowManager.setClosable(true);
    await windowManager.setSkipTaskbar(false);
    // await windowManager.setAlwaysOnTop(true);
    windowManager.show();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
