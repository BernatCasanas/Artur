// ignore_for_file: prefer_const_constructors

import 'package:artur/dataStructure.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'product_controller.dart';
import 'sm_product_model.dart';
import 'color.dart';

class ProductDetailsView extends StatelessWidget {
  ProductDetailsView({Key? key, required this.activity}) : super(key: key);
  final ProductController productController = Get.put(ProductController());
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBgColor,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Image(image: NetworkImage(activity.image))),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 35,
                    icon: const Icon(
                      Ionicons.chevron_back,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .65,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          activity.hasAR ? "Tour Virtual" : "Tour Presencial",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              activity.name,
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "${activity.duration}'",
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          activity.longDescription,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.kGreyColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            activity.hasAR
                ? Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.kGreyColor),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.view_in_ar_outlined, size: 30),
                      color: Colors.grey,
                      onPressed: () {
                        //Aqui va el AR
                      },
                    ),
                  )
                : Container(),
            SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  productController.addToCart();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Obx(
                    //canviar boto
                    () => productController.isAddLoading.value
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          )
                        : Text(
                            'Empezar',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
