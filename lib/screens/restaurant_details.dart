import 'package:class25/data/data.dart';
import 'package:class25/models/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantDetails extends StatefulWidget {
  RestaurantDetails({required this.restaurants});
  final Restaurant restaurants;

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: "${widget.restaurants.name}",
                child: Image.asset(
                  '${widget.restaurants.imageUrl}',
                )),
            Text(
              '${widget.restaurants.name}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${widget.restaurants.address}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff2196F3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    'Review',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff2196F3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    'Contact',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Menu',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 350,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20),
                        child: Container(
                          height: 120,
                          width: 160,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: Offset(2, 2)),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      '${widget.restaurants.menu![index].imageUrl}'),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130,left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text('${widget.restaurants.menu![index].name}',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                              Text('${widget.restaurants.menu![index].price}',style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green
                              ),),
                            ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
