import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rizky Said App"),
        leading: const Icon(Icons.app_shortcut_sharp),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child:const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Heading', style: Theme.of(context).textTheme.headlineLarge),
            Text('Sub-Heading', style: Theme.of(context).textTheme.headlineMedium),
            Text('Paragraph', style: Theme.of(context).textTheme.headlineSmall),
            ElevatedButton(onPressed: (){}, child: const Text("Elevated Button")),
            OutlinedButton(onPressed: (){}, child: const Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage('assets/images/rizkysaid_mask.jpeg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

