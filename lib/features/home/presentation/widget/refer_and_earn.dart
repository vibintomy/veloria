import 'package:flutter/material.dart';
import 'package:veloria/core/utils/widgets.dart';

Container referAndEarn(BuildContext context) {
    return Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.green,
                 borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Stack(
                
                children: [
                  Positioned(
                    right: 20,
                    bottom: 10,
                    child: Image.asset('asset/gift.png',fit: BoxFit.cover,)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 30),
                        child: Text('Refer & Earn',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Text('Invite your friends  & earn 15% off',style: TextStyle(fontSize: 12,color: Colors.white),),
                            kwidth,
                            Icon(Icons.arrow_circle_right,color: Colors.white,size: 12,)
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
  }

 