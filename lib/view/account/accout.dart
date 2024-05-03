
import 'package:flipkart/core/colors.dart';
import 'package:flipkart/view/account/body.dart';
import 'package:flipkart/view/account/head.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Account extends StatelessWidget {
  final String userName;
  final String emailId;

   Account({Key? key, required this.userName, required this.emailId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> containers = [
    HeadContainer(emailId: emailId, userName: userName),
   ListedContainer(iconData: Icons.shopping_bag_outlined, title: 'Order', index: 0, name: userName, email: emailId,),
   ListedContainer(iconData: Icons.remember_me_outlined, title: 'My Details', index: 1, name: userName, email: emailId),
   ListedContainer(iconData: Icons.pin_drop_outlined, title: 'Location', index: 2, name: userName, email: emailId),
   ListedContainer(iconData: Icons.payments_outlined, title: 'Payment methods', index: 3, name: userName, email: emailId),
   ListedContainer(iconData: Icons.favorite_border_outlined, title: 'My wishlisted', index: 4, name: userName, email: emailId),
   ListedContainer(iconData: Icons.notifications_outlined, title: 'Notifications', index: 5, name: userName, email: emailId),
   ListedContainer(iconData: Icons.help, title: 'Help', index: 6, name: userName, email: emailId),
   ListedContainer(iconData: Icons.info_outline, title: 'About', index: 7, name: userName, email: emailId),
];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                
                itemBuilder: (context, index) {
                  return containers[index];
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: containers.length,
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 20),
             child: GestureDetector(
              onTap: () {
                
              },
               child: Container(
                decoration: BoxDecoration(
                color:kGrey,
                borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Icon(Icons.logout,color: Colors.green,),
                      Center(
                        child: Text("Log Out",style:   TextStyle(
                            color: Colors.green,fontSize: 23,fontWeight: FontWeight.bold),),
                      ),
                  // Icon(Icons.logout,color: Colors.green,),
                    ],
                  ),
                ),
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
