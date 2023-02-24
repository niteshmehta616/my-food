import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:my_food/View/Screens/profilescreen.dart';
import '../../Model/model.dart';
import '../Components/food_story.dart';
import '../Components/foodc.dart';
import '../Components/store_profile_banner.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> city = ["Udaipur", "Jaipur", "Jodhpur", "Jaisalmer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.local_airport),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 60,
                            width: 150,
                            child: DropdownSearch<String>(
                              popupProps: const PopupProps.menu(
                                showSelectedItems: true,
                                // disabledItemFn: (String s) => s.startsWith('I'),
                              ),
                              dropdownDecoratorProps:
                                  const DropDownDecoratorProps(
                                dropdownSearchDecoration: InputDecoration(
                                  // labelText: "Menu mode",
                                  hintText: "Select City here..",
                                ),
                              ),
                              items: city,
                              onChanged: print,
                              selectedItem: city[0],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen()),
                          );
                        },
                        child: CircleAvatar(
                          radius: 23.0,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRROt7YUKa7excpJt4CR59ZwHzhWDfV1mr0eQ&usqp=CAU'),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 60,
                    child: Card(
                        child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Search your menu here..',
                              style: TextStyle(color: Colors.grey)),
                        )
                      ],
                    )),
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Choose your Menu here...',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: story.length,
                itemBuilder: (context, index) {
                  // print("${myList[index]['image']}");
                  return FoodStory(
                    cname: '${story[index]['name']}',
                    simg: '${story[index]['image']}',
                  );
                },
              ),
            ),

            //  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Grab Your Best Deal...',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 90,
                    // color: Colors.cyan,
                    child: Card(
                      child: Image.network(
                          'https://t4.ftcdn.net/jpg/03/30/29/73/240_F_330297322_oJScFWbdpT7nM3psjiOnzyxAwCZWzqse.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),

            //  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -

            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Todays Hot Deal....',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotDeal.length,
                itemBuilder: (context, index) {
                  return FoodCategory(
                    img: '${hotDeal[index]['Image']}',
                    name: '${hotDeal[index]['name']}',
                    rate: '${hotDeal[index]['rate']}',
                    price: '${hotDeal[index]['Price']}',
                    off: '${hotDeal[index]['off']}',
                  );
                },
              ),
            ),
            //-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
            StoreProfileBanner(
              name: '${hotelprofile[0]['name']}',
              img: '${hotelprofile[0]['Image']}',
              rate: '${hotelprofile[0]['rate']}',
              off: '${hotelprofile[0]['off']}',
              desc: '${hotelprofile[0]['Desc']}',
            ),
            StoreProfileBanner(
              name: '${hotelprofile[1]['name']}',
              img: '${hotelprofile[1]['Image']}',
              rate: '${hotelprofile[1]['rate']}',
              off: '${hotelprofile[1]['off']}',
              desc: '${hotelprofile[1]['Desc']}',
            ),
            StoreProfileBanner(
              name: '${hotelprofile[2]['name']}',
              img: '${hotelprofile[2]['Image']}',
              rate: '${hotelprofile[2]['rate']}',
              off: '${hotelprofile[2]['off']}',
              desc: '${hotelprofile[2]['Desc']}',
            ),
          ],
        ),
      ),
    ));
  }
}
