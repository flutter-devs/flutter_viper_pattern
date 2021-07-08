import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viper_architecture_pattern/modules/home/presenter/place_holder_presenter.dart';
import 'package:viper_architecture_pattern/modules/home/view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PlaceHolderPresenter()),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
