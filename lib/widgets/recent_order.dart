import 'package:class25/data/data.dart';
import 'package:class25/models/order.dart';
import 'package:flutter/material.dart';

class RecentOrder extends StatefulWidget {
  const RecentOrder({Key? key}) : super(key: key);

  @override
  State<RecentOrder> createState() => _RecentOrderState();
}

class _RecentOrderState extends State<RecentOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Order',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders!.length,
              itemBuilder: (Context, index) {
                Order order = currentUser.orders![index];
                return Container(
                  margin: EdgeInsets.only(right: 20,bottom: 20),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(2, 2)),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('${order.food!.imageUrl}'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('${order.food!.name}',style: TextStyle(
                        fontSize: 25
                      ),
                      ),
                      Text('${order.restaurant!.name}',style: TextStyle(
                        fontSize: 18
                      ),
                      ),
                      Text('${order.date}',style: TextStyle(
                        fontSize: 18
                      ),
                      ),
                          ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
