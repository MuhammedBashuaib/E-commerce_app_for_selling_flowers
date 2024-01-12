import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store_app/business_logic/provider/cart.dart';
import 'package:e_store_app/presentation/widgets/custom_row_appbar_action.dart';
import 'package:e_store_app/const.dart';
import 'package:e_store_app/data/models/item.dart';
import 'package:e_store_app/presentation/screens/details_screen.dart';
import 'package:e_store_app/presentation/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myDarkGreen,
        title: const Text("Home"),
        actions: const [
          CustomRowAppBarAction(
            isIconButton: true,
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: heightScreen * .02),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: widthScreen * .0285,
            mainAxisSpacing: heightScreen * .033,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: items[index])));
              },
              child: GridTile(
                footer: GridTileBar(
                  trailing: Consumer<Cart>(builder: (context, cart, child) {
                    return IconButton(
                      color: const Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {
                        cart.addList(items[index]);
                      },
                      icon: const Icon(Icons.add),
                    );
                  }),
                  leading: Text("\$${items[index].price}"),
                  title: const Text(""),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // البوسيشن ما تشتغل غير وسط الاستاك
                      top: -3,
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        // يمكنني من عمل بوردر راديوس للصورة
                        borderRadius: BorderRadius.circular(widthScreen * .135),
                        child: Image.asset(items[index].imagePath),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
