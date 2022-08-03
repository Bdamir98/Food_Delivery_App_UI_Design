import 'package:class25/data/data.dart';
import 'package:class25/screens/restaurant_details.dart';
import 'package:flutter/material.dart';

class NearMeRestaurent extends StatefulWidget {
  const NearMeRestaurent({Key? key}) : super(key: key);

  @override
  State<NearMeRestaurent> createState() => _NearMeRestaurentState();
}

class _NearMeRestaurentState extends State<NearMeRestaurent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Near Me Restaurant',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
              height: 10,
          ),
          Container(
            height: 380,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: restaurants.length,
              itemBuilder: (Context, index) {
                return  InkWell(
                  onTap: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RestaurantDetails(restaurants: restaurants[index],)),
  );
  //print(restaurants[index].name);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20,bottom: 20,left: 20,top: 10),
                      height: 170,
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
                          Hero(
                            tag: "${restaurants[index].name}",
                            child: Container(
                              height: 170,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('${restaurants[index].imageUrl}'),fit: BoxFit.cover)
                              ),
                            ),
                          ),SizedBox(
                              width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('${restaurants[index].name}',style: TextStyle(
                             fontSize: 15
                          ),
                           ),
                          Text('${restaurants[index].address}',style: TextStyle(
                           fontSize: 18
                          ),
                          ),
                              ],
                          ),
                        ],
                      ),
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
