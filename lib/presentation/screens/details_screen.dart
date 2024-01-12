import 'package:flutter/material.dart';

import 'package:e_store_app/const.dart';
import 'package:e_store_app/data/models/item.dart';
import 'package:e_store_app/presentation/widgets/custom_row_appbar_action.dart';

class DetailsScreen extends StatefulWidget {
  final Item product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShowMore = true;
  String showMoreLessButton = "Show more";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.myDarkGreen,
          title: const Text("Details"),
          actions: const [
            CustomRowAppBarAction(
              isIconButton: true,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.product.imagePath),
              SizedBox(
                height: heightScreen * .015,
              ),
              Text(
                "\$${widget.product.price}",
                style: TextStyle(
                  fontSize: fSize * 1.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: heightScreen * .01,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: widthScreen * .01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: heightScreen * .004,
                          horizontal: widthScreen * .01),
                      decoration: BoxDecoration(
                        color: MyColors.myPink,
                        borderRadius: BorderRadius.circular(widthScreen * .009),
                      ),
                      child: Text(
                        "New",
                        style: TextStyle(
                          fontSize: fSize * .9,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: widthScreen * .035,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: heightScreen * .032,
                          color: MyColors.myAmber,
                        ),
                        Icon(
                          Icons.star,
                          size: heightScreen * .032,
                          color: MyColors.myAmber,
                        ),
                        Icon(
                          Icons.star,
                          size: heightScreen * .032,
                          color: MyColors.myAmber,
                        ),
                        Icon(
                          Icons.star,
                          size: heightScreen * .032,
                          color: MyColors.myAmber,
                        ),
                        Icon(
                          Icons.star,
                          size: heightScreen * .032,
                          color: MyColors.myAmber,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: widthScreen * .15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_location,
                          color: MyColors.myDarkGreen,
                          size: heightScreen * .032,
                        ),
                        SizedBox(
                          width: widthScreen * .01,
                        ),
                        Text(
                          widget.product.location,
                          style: TextStyle(
                            fontSize: fSize * 1.09,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: heightScreen * .03,
              ),
              SizedBox(
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.only(left: widthScreen * .025),
                  child: Text(
                    "Details: ",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: fSize * 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: heightScreen * .02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: widthScreen * .015),
                child: Text(
                  widget.product.details,
                  // ignore: dead_code
                  maxLines: isShowMore ? 4 : null,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: fSize * 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: heightScreen * .025,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                    isShowMore
                        ? showMoreLessButton = "Show more"
                        : showMoreLessButton = "Show less";
                  });
                },
                child: Text(
                  showMoreLessButton,
                  style: TextStyle(
                    fontSize: fSize * 1.4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
