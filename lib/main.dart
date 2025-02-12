import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';
import 'package:state_management_second/catalogapp/screens/cart.dart';
import 'package:state_management_second/catalogapp/screens/catalog.dart';
import 'package:state_management_second/catalogapp/screens/login.dart';

class Mycatalog extends StatelessWidget {
  const Mycatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        initialRoute: login,

        routes: {
          login:(context)=>const Login(),
          catalog:(context)=> const Catalog(),
          cart: (context)=> const Cart()
        }, 
      );
  }
}
String catalog = 'catalog';
String login = 'login';
String cart = 'cart';

void main()
  { 
    runApp(
      ChangeNotifierProvider(
        create: (_)=> CatalogMethod(),
        child: const Mycatalog())

  );
}