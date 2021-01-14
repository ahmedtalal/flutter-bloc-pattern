import 'package:bloc_design_pattern/BlocPattern/BlocDelegateBuilder.dart';
import 'package:bloc_design_pattern/BlocPattern/BlocHelper.dart';
import 'package:bloc_design_pattern/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main(){
  Bloc.observer = BlocDelegateBuilder() ;
  runApp(MyApp()) ;
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: BlocProvider<BlocHelper>(
        create: (context) => BlocHelper(),
        child: Home(),
      ),
    );
  }
}
