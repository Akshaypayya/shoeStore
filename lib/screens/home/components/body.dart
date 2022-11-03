import 'package:flutter/material.dart';
import 'package:shoestore/constants.dart';
import 'package:shoestore/models/Product.dart';
import 'package:shoestore/screens/details/details_screen.dart';
import 'package:shoestore/screens/home/components/categorries.dart';
import 'package:shoestore/screens/home/components/item_card.dart';



class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DetailsScreen(product: products[index],
                            ),
                          )), key: Key(""),
                    )),
          ),
        ),
      ],
    );
  }
}
