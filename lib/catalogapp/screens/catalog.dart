import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';
import 'package:state_management_second/catalogapp/screens/cart.dart';
import 'package:state_management_second/main.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Catalog',
          style: GoogleFonts.lato(),
        ),
        actions: [
          IconButton(
              tooltip: 'Cart',
              onPressed: () {
                Navigator.pushNamed(context, cart);
                {
                  const Cart();
                }
              },
              icon: const FaIcon(FontAwesomeIcons.cartShopping))
        ],
      ),
      body: ListView.builder(
          itemCount: catalogMethod.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: catalogMethod.items[index]['leading'],
              title: catalogMethod.items[index]['title'],
              trailing: TextButton(
                  onPressed: () {
                    Provider.of<CatalogMethod>(context, listen: false)
                        .changingIcon(index);
                  },
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
