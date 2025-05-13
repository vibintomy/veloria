import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';
import 'package:veloria/features/home/presentation/widget/bottom_navigation.dart';
import 'package:veloria/features/home/presentation/widget/customer_favourite.dart';
import 'package:veloria/features/home/presentation/widget/grid_items.dart';
import 'package:veloria/features/home/presentation/widget/list_items.dart';
import 'package:veloria/features/home/presentation/widget/nearby_stores.dart';
import 'package:veloria/features/home/presentation/widget/refer_and_earn.dart';
import 'package:veloria/features/notification/presentation/pages/notification_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on, color: kgreen),
                  const SizedBox(width: 8),
                  const Text(
                    'ABCD, New Delhi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  Image.asset('asset/back button.png', height: 20),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: CustomSearchField()),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationPage(),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: kred,
                          size: 30,
                        ),
                        Positioned(
                          right: 0,
                          top: 1,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: kred,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: kwhite,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.local_offer_outlined,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'What would you like to do today?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              gridItems(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                      color: kgreen,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  kwidth,
                  Image.asset('asset/back button.png'),
                ],
              ),
              kheight20,
              Text(
                'Top picks for you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kheight,
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  color: kgreen400,
                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset(
                        'asset/Figma_Resources_2-removebg-preview 1.png',
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                    ),

                    // 👇 Column with text and button
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DISCOUNT\n25% ALL\nFRUITS',
                            style: const TextStyle(
                              color: kwhite,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(160, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              backgroundColor: korange,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'CHECK NOW',
                              style: TextStyle(color:kwhite),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kgreen,
                    ),
                  ),
                ],
              ),
              kheight,

              listOfItems(),
              listOfItems(),
              kheight,
              Text(
                'Craze deals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              kheight,
              customerFavourite(),
              kheight20,
              referAndEarn(context),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Stores',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kgreen,
                    ),
                  ),
                ],
              ),
              kheight,

              nearbyStores(context),
              kheight,
              nearbyStores(context),
              kheight20,
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(230, 50),
                    backgroundColor: kgreen,
                    shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View all stores',
                    style: TextStyle(color: kwhite),
                  ),
                ),
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
