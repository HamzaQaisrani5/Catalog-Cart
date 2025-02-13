import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';

//Cart class
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    //Defined a variable of maximum height od user's device
    final maxHeight = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 244, 144),
      //appbar of google_font plugin text font
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Cart',
            style: GoogleFonts.lato(
              textStyle:
                  const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        //Widget to improve vertically responsiveness
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //Here a list of Catalog selected item will be appear, This is list of Text widgets
                children: Provider.of<CatalogMethod>(context).cartItem,
              ),
              //Utilizing defined maxHeight variable for padding accroding to users device screen height
              SizedBox(
                height: maxHeight.height * 0.7,
              ),
              //A thick divider to seperate price and names to selected item
              const Divider(
                thickness: 2.5,
                color: Colors.black,
              ),
              //Price of selected item is appear here
              Text(
                'Rs ${Provider.of<CatalogMethod>(context).sumofEach}/-',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 25)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
