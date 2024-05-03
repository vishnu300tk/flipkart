import 'package:flipkart/core/colors.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications (4)',
            style: TextStyle(color: kWhite),
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 12.0,
                right: 12.0,
              ),
              child: Container(
                  height: 200,
                  width: double.infinity,
                  color: kWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text(
                          'Protein Supplements\nUp to 50% Off',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, bottom: 10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: kRed,
                              radius: 6,
                            ),
                            Text(' 1 day ago'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          height: 80.0,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Image.network(
                                'https://yoyosarkari.com/wp-content/uploads/2020/09/Flipkart-Notification-2020.png',
                                height: 80,
                                width: 80,
                              ),
                              const Positioned(
                                top: 0.0,
                                left: 100.0,
                                child: Text(
                                  'For your fitness goals',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          },
        ));
  }
}