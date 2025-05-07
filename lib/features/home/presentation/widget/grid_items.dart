
  import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

GridView gridItems() {
    return GridView.count(
            
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
              childAspectRatio: 0.65,
                physics:  NeverScrollableScrollPhysics(),
              children: const [
                DiscountIconCard(
                  imagePath: 'asset/Group 23.png',
                  title: 'Food\nDelivery',
                ),
                DiscountIconCard(
                  imagePath: 'asset/medicine 1.png',
                  title: 'Medicines',
                ),
                DiscountIconCard(
                  imagePath: 'asset/dashicons_pets.png',
                  title: 'Pet\nSupplies',
                  offerLabel: '10% off',
                ),
                DiscountIconCard(
                  imagePath: 'asset/Group.png',
                  title: 'Gifts',
                  showLabel: false,
                ),
                DiscountIconCard(
                  imagePath: 'asset/Group 88.png',
                  title: 'Meat',
                  showLabel: false,
                ),
                DiscountIconCard(
                  imagePath: 'asset/Make Up.png',
                  title: 'Cosmetic',
                  showLabel: false,
                ),
                DiscountIconCard(
                  imagePath: 'asset/Group 87.png',
                  title: 'Stationery',
                  showLabel: false,
                ),
                DiscountIconCard(
                  imagePath: 'asset/Layer 2.png',
                  title: 'Stores',
                ),
              ],
            );
  }

