 import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

Container bottomNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: kwhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, -3), 
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0, 
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
         
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/store.png',
                    height: 24,
                    width: 24,
                    color:kgreen, 
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      color: kgreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // Shopping basket icon
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/shopping-basket.png',
                    height: 24,
                    width: 24,
                    color: kgrey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 12,
                      color: kgrey,
                    ),
                  ),
                ],
              ),
              // Vector icon (orders)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/bag.png',
                    height: 24,
                    width: 24,
                    color: kgrey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'My Order',
                    style: TextStyle(
                      fontSize: 12,
                      color: kgrey,
                    ),
                  ),
                ],
              ),
              // Users icon (profile)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/users.png',
                    height: 24,
                    width: 24,
                    color: kgrey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 12,
                      color: kgrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }