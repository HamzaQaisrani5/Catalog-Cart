import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';
import 'package:state_management_second/catalogapp/screens/cart.dart';
import 'package:state_management_second/catalogapp/screens/catalog.dart';
import 'package:state_management_second/catalogapp/screens/login.dart';

//Mycatalog class 
class Mycatalog extends StatelessWidget {
  const Mycatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //Making login class screen as initial route/page of screen
        initialRoute: login,
        //Clearfying routing 
        routes: {
          login:(context)=>const Login(),
          catalog:(context)=> const Catalog(),
          cart: (context)=> const Cart()
        }, 
      );
  }
}
//Define catalog,login and cart class routes variable for reference
String catalog = 'catalog';
String login = 'login';
String cart = 'cart';

//main function of whole project
void main()
  { 
    runApp(
      //Global class of Project
      ChangeNotifierProvider(
        //Give context of changenotifier class
        create: (_)=> CatalogMethod(),
        child: const Mycatalog())

  );
}