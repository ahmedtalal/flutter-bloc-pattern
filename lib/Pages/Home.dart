import 'package:bloc_design_pattern/BlocPattern/BlocEvents.dart';
import 'package:bloc_design_pattern/BlocPattern/BlocHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    BlocHelper bHelper = BlocProvider.of<BlocHelper>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc design pattern"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Icon(Icons.add , size: 20 , color: Colors.blue,),
              onPressed: (){
                // increment code is here >>> 
                bHelper.add(BlocEvents.increment);
              },
            ) ,
            
            BlocBuilder<BlocHelper,int>(
              builder: (context,state){
                return Text("$state");
              }
            ),

            RaisedButton(
              child: Icon(Icons.remove , size: 20 , color: Colors.red,),
              onPressed: (){
                // decrement code is here >>>> 
                bHelper.add(BlocEvents.decrement) ;
              },
            )

          ],
        ),
      ),
    );
  }
}
