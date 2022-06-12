import 'package:flutter/material.dart';
import 'package:flutter_padrao_viper/modules/home/presenter/place_holder_presenter.dart';
import 'package:flutter_padrao_viper/modules/home/view/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Padrão V.I.P.E.R',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.black,
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