import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogMethod extends ChangeNotifier{
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

  List<Widget> cartItem = [];
  int eachPrice = 20;
  late int sumofEach
   = 0;
  void changingIcon(index) {
     items[index]['action']=const Icon(Icons.check,color: Colors.black);
     cartItem.insert(0,items[index]['title']);
     sumofEach =sumofEach+(eachPrice*1);
     log(cartItem.toString());
     log("items[index]: ${items[index]}");
     notifyListeners();
  }
  
}
CatalogMethod catalogMethod = CatalogMethod();