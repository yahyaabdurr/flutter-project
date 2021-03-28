import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/module_page.dart';
import 'package:state_management/provider/done_module_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ModulePage(),
      ),
    );
  }
}
