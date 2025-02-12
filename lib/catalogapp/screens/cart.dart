import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:state_management_second/catalogapp/method/catalog_method.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 244, 144),
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: Provider.of<CatalogMethod>(context).cartItem,
              ),
              SizedBox(
                height: maxHeight.height * 0.7,
              ),
              const Divider(
                thickness: 2.5,
                color: Colors.black,
              ),
              Text(
                '${Provider.of<CatalogMethod>(context).sumofEach}/-',
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
