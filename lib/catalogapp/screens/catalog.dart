import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';
import 'package:state_management_second/catalogapp/screens/cart.dart';
import 'package:state_management_second/main.dart';

//Catalog class
class Catalog extends StatelessWidget {
  const Catalog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Catalog',
          //google_fonts plugin's for Text font
          style: GoogleFonts.lato(),
        ),
        //Icon butoon of route Cart screen
        actions: [
          IconButton(
              tooltip: 'Cart',
              onPressed: () {
                Navigator.pushNamed(context, cart);
                {
                  const Cart();
                }
              },
              //Use font_awesome plugin for Cart icon, unavailable on default Icons list
              icon: const FaIcon(FontAwesomeIcons.cartShopping))
        ],
      ),
      //Beside creating multiple List tiles widgets, I prefer to use Listview.builder
      body: ListView.builder(
          itemCount: catalogMethod.items.length,
          itemBuilder: (context, index) {
            
            return ListTile(
              //Here item is the List of maps in catalog_method.dart file and index indicate specific Listtile
              leading: catalogMethod.items[index]['leading'],
              title: catalogMethod.items[index]['title'],
              //Call of changingIcon method to rebuild it's child widget, index is argument to call specific 
              //listtile method
              trailing: TextButton(
                  onPressed: () {
                    Provider.of<CatalogMethod>(context, listen: false)
                        .changingIcon(index);
                  },
                  //Registered Widget to rebuild after triggring method 
                  child: Provider.of<CatalogMethod>(context, listen: true)
                          .items[index]['action'] ??
                      Text('ADD',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(117, 0, 0, 0)),
                          ))),
            );
          }),
    );
  }
}
