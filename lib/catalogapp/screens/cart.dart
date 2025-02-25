import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Center(
        child: Provider.of<CatalogMethod>(context, listen: false)
                .cartItem
                .isEmpty
            ? Text(
                'Item not found',
                style: GoogleFonts.montserrat(),
              )
            : Consumer<CatalogMethod>(builder: (context, catalogMethod, child) {
                return ListView.builder(
                    itemCount:
                        Provider.of<CatalogMethod>(context).cartItem.length,
                    itemBuilder: (context, index) {
                      var title =
                          Provider.of<CatalogMethod>(context).cartItem[index];
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                          shape: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(width: 0.5)),
                          tileColor:const Color.fromARGB(255, 239, 236, 204),
                          title: title,
                          trailing: IconButton(
                            onPressed: () {
                              Provider.of<CatalogMethod>(context, listen: false)
                                  .removeCartItem(index);
                            },
                            icon: const FaIcon(FontAwesomeIcons.xmark),
                            tooltip: 'Discart',
                          ),
                        ),
                      );
                    });
              }),
      ),
      // const Divider(
      //   thickness: 2.5,
      //   color: Colors.black,
      // ),
      // //Price of selected item is appear here
      // Text(
      //   'Rs ${Provider.of<CatalogMethod>(context).sumofEach}/-',
      //   style: GoogleFonts.lato(
      //       textStyle: const TextStyle(
      //           fontWeight: FontWeight.w600, fontSize: 25)),
      // )

      // Padding(
      //   padding: const EdgeInsets.all(12),
      //   //Widget to improve vertically responsiveness
      //   child: SingleChildScrollView(
      //     scrollDirection: Axis.vertical,
      //     child: Column(
      //       children: [
      //         Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           //Here a list of Catalog selected item will be appear, This is list of Text widgets
      //           children: Provider.of<CatalogMethod>(context).cartItem,
      //         ),
      //         //Utilizing defined maxHeight variable for padding accroding to users device screen height
      //         SizedBox(
      //           height: maxHeight.height * 0.7,
      //         ),
      //A thick divider to seperate price and names to selected item
    );
  }
}
