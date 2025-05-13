 import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

SizedBox customerFavourite() {
    return SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 295,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: kblack,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Stack(
                      children: [

                        Positioned(
                          right: 10,
                          bottom: 0,
                          child: Image.asset('asset/This Produce Delivery Service Wants You to Start Eating the _Ugly_ Vegetables Too 1.png',fit: BoxFit.cover,)),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Customer favourite \ntop supermarkets',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: kwhite),),
                              Row(
                                children: [
                                  kheight,
                                  Text('Explore',style: TextStyle(fontSize: 16,color: korange),),
                                  kwidth,
                                  Icon(Icons.arrow_forward,color: korange,size: 16,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
  }