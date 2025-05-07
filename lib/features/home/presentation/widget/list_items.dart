 import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

SizedBox listOfItems() {
    return SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    width: 220,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset('asset/Group 101.png', fit: BoxFit.cover),
                              kwidth,
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     kheight20,
                                      Text('Mithas Bhandar',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                      Text('Sweets,North Indian',style: TextStyle(fontSize: 11),),
                                      Text('(store location) | 6.4 kms',style: TextStyle(fontSize: 9),),
                                       Row(
                                   
                                         children: [
                                           Icon(Icons.star,size: 15,),
                                         SizedBox(width: 5,),
                                           Text('4.1 | 45 mins',style: TextStyle(fontSize: 10),)
                                         ],
                                       )
                                    ],
                                  )),
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