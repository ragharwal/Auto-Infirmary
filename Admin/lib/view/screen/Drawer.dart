import 'package:flutter/material.dart';
import 'package:infirmaryweb/view/screen/AppBar.dart';
import 'package:infirmaryweb/view/screen/Change_Info.dart';

Drawer appDrawer(BuildContext context){
  return Drawer(
    child: Scaffold(
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              FlatButton(
                child: Text("Change Doctor information",
                style: TextStyle(
                  color: Colors.blue
                ),
                ),
                onPressed: (){
                  return  showDialog(
                    context: context,
                    builder: (context) {
                      return Change_Info();
                },
                
              ) ;   }  )   ],
          ),
        ),
      ),
    ),
  );
}


Widget createDrawerItem(
    {IconData icon,
      String text,
      GestureTapCallback onTap,
      BuildContext context}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text , style: TextStyle(color: Colors.white),),
        )
      ],
    ),
  );
}