import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipleprovider/testmultiprovider.dart';
import 'package:provider/provider.dart';

class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
 // double value=1.0;
  @override
  Widget build(BuildContext context) {
    print("Hello");
    final valuechange = Provider.of<multiprovider>(context,listen: false );
    return Scaffold(
      appBar: AppBar(title: Text("Multiprovider"),
      centerTitle: true,
      ),
      body:  Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Center(
        child:   Consumer<multiprovider>(
          builder:( context,value,child){
   return (
       Slider(
    max: 1,
    min: 0,
    value: value.value,
    onChanged: (val){
    print("object");
valuechange.getdoublevalue(val);


    }
    )

    );
          }
    ),
    ),


          SizedBox(
            height: 10,
          ),

          Consumer<multiprovider>(
              builder:
              (context,value,child)
            {
              return  Row(
              children: [
              Expanded(
              child: Container(
            height: 100,
            color: Colors.lightBlue.withOpacity(value.value),
            child: Text("container=1"),
            ),),
            Expanded(
            child: Container(
            height: 100,
            color: Colors.green.withOpacity(value.value),
            child: Text("container =2"),
            ),
            ),
            ],

            );

            }
          )


           

          ],
        ),

    );
  }
}
