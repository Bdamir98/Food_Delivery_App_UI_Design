import 'package:class25/data/data.dart';
import 'package:class25/widgets/near_me.dart';
import 'package:class25/widgets/recent_order.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Color.fromARGB(255, 126, 125, 125),
            ),
          ),
        ),
        title: Text('Food Delivery'),
        actions: [
          Center(
              child: Text(
            '${currentUser.orders!.length}',
            style: TextStyle(fontSize: 15),
          )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RecentOrder(),
          SizedBox(
            height: 5,
          ),
          NearMeRestaurent(),
        ],
      ),
    );
  }
}
