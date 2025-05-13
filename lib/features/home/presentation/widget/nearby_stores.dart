

import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

SizedBox nearbyStores(BuildContext context) {
    return SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              
              children: [
                Positioned(
                  left: 0,
                  child:Image.asset('asset/Group 282.png',fit: BoxFit.fitHeight,) ),
                  Positioned(
                    right: 0,
                    top: 10,
                    bottom: 50,
                    child: Column(children: [
                    Row(
                      children: [
                         Icon(Icons.star,size: 18,),
                        SizedBox(width: 5,),
                         Text('4.1'),
                      ],
                    ),
                    Text('45 mins',style: TextStyle(color: korange),)
                  ],)),
                Padding(
                  padding: const EdgeInsets.only(left: 100,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Freshly Baker',style: TextStyle(fontWeight: FontWeight.bold),),
                      kheight,
                        Text('Sweets, North Indian',style: TextStyle(fontSize: 12),),
                  Text('Site No - 1 | 6.4 kms',style: TextStyle(fontSize: 12),),
                  kheight,
                  Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(child: Text('Top Store',style: TextStyle(fontSize: 9),)),
                  ),
                  Divider(
                    color: kgrey,
                  ),
                   Row(
                    children: [
                      Image.asset('asset/Vector.png'),
                      kwidth5,
                      Text('Upto 10% OFF',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      kwidth5,

                      Image.asset('asset/grocery (1) 1.png'),
                      kwidth5,
                      Text('3400+ items available',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                    ],
                   )
                    ],
                  ),
                ),
              ],
            ),
           );
  }