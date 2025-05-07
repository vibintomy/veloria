import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';
import 'package:veloria/features/home/presentation/widget/customer_favourite.dart';
import 'package:veloria/features/home/presentation/widget/grid_items.dart';
import 'package:veloria/features/home/presentation/widget/list_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.green),
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
                children: const [
                  Expanded(child: CustomSearchField()),
                  SizedBox(width: 10),
                  Icon(Icons.notifications_none, color: Colors.red, size: 30),
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
                      color: Colors.green,
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
                  color: Colors.green[400],
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
                              color: Colors.white,
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
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'CHECK NOW',
                              style: TextStyle(color: Colors.white),
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
                      color: Colors.green,
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
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                   borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Text('Refer & Earn',style: TextStyle(color: Colors.white),),
                    Text('Invite your friends  & earn 15% off',style: TextStyle(fontSize: 14,color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

 
}
