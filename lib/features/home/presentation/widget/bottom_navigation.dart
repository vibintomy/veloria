 import 'package:flutter/material.dart';

Container bottomNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, -3), // Negative y-offset to make shadow appear above
          ),
        ],
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0, // Set to 0 since we're handling the shadow in the Container
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Store icon (colored green to show it's selected)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/store.png',
                    height: 24,
                    width: 24,
                    color: Colors.green, // First icon is green
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,
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
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'My Order',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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