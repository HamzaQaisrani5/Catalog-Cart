import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Catalog method class extends with Change Notifier 
class CatalogMethod extends ChangeNotifier{
  //List of maps which defined leading, title and trailing widgets of Every single listtile
  List<Map<dynamic,dynamic>> items = [
    {
    'leading': Container(height: 30,width: 30,color: Colors.amber,),
    'title': Text('Control flow',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.amberAccent,),
    'title': Text('Gmails',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.teal,),
    'title': Text('Iphone 16',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.brown,),
    'title':Text('Neural Network', style: GoogleFonts.montserrat(),),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.cyanAccent,),
    'title': Text('Cryptography',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.deepOrange,),
    'title': Text('Smart Contract',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.indigo,),
    'title': Text('Equilibrium',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.deepPurpleAccent,),
    'title': Text('Nash',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.greenAccent,),
    'title':Text('Bitcoin',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {
    'leading': Container(height: 30,width: 30,color: Colors.grey,),
    'title':Text('Account',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {'leading': Container(height: 30,width: 30,color: Colors.lime,),
    'title': Text('Shopner',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {'leading': Container(height: 30,width: 30,color: Colors.blueAccent,),
    'title':Text('Funtion call',style: GoogleFonts.montserrat()),
    'action': null,
    },
    {'leading': Container(height: 30,width: 30,color: Colors.pink,),
    'title':Text('Mango', style: GoogleFonts.montserrat(),),
    'action': null,
    }
  ];
  //List where title of every added Listtile insert
  List<Widget> cartItem = [];
  //Price of single Product
  int eachPrice = 20;
  //initial sum of all added product
  late int sumofEach
   = 0;
   //changing Icon/rebuilding trailing widgets child method, index is dynamic parameter
  void changingIcon(index) {
    //When call items[index]['action'] become an Icon of name check
     items[index]['action']=const Icon(Icons.check,color: Colors.black);
     //Inserted added/selected items in upper cartItem list at 0 index 
     cartItem.insert(0,items[index]['title']);
     //simple summerizing each selected/added product price
     sumofEach =sumofEach+(eachPrice*1);
     //printing cartItem for clarities sake
     log(cartItem.toString());
     //state changed triggring method
     notifyListeners();
  }
  void removeCartItem(index){
    print('Remove ${items[index]}');
    var remove = cartItem.remove(cartItem[index]);
    print("remove $remove");
    
    sumofEach-=20;
    notifyListeners();
  }
  
}
//object of class CatalogMethod
CatalogMethod catalogMethod = CatalogMethod();