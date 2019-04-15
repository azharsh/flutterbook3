import 'package:flutter/material.dart';
import 'main.dart';





class PlaceholderWidget extends StatelessWidget {
 final String item;


 PlaceholderWidget(this.item);
 

 @override
 Widget build(BuildContext context) {
   return  Center(
        child: CustomScrollView(
        primary: false,
        slivers: <Widget>[
        SliverPadding(
        padding: const EdgeInsets.all(20.0),
        sliver: SliverGrid.count(
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
        new GestureDetector(
        onTap: (){
           final snackBar = SnackBar(
            content: Text('check another menu'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change!
              },
            ),
          );

          // Find the Scaffold in the Widget tree and use it to show a SnackBar!
          Scaffold.of(context).showSnackBar(snackBar);
           
            Navigator.push( context, MaterialPageRoute(builder: (context) => Detail(item)),
           
          );
        },
        child: new Card(       
           child: Image.asset(
            item,
            fit: BoxFit.fill,            
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ), 
         )
      )
                
                  ],
                ),
              ),
            ],
   
          ),
        );
 }
}
