import 'package:flutter/material.dart';

class ShoppingCardTask extends StatefulWidget {
  const ShoppingCardTask({super.key});

  @override
  State<ShoppingCardTask> createState() => _ShoppingCardTaskState();
}

class _ShoppingCardTaskState extends State<ShoppingCardTask> {
  List<Map<String, dynamic>> itemData = [
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
    {
      "itemName": "Zogaa\nFlameSweater",
      "itemPrice": "42.63\$",
      "itemSales": "2554 Sales",
      "itemRatings": 3.1,
    },
  ];
  List<String> itemCategoryTitle = [
    'Man',
    'Woman',
    'Kids',
    'Groceries',
    'Electronic',
  ];
  List<String> itemCategoryIcon = [
    'man',
    'woman',
    'kids',
    'groceries',
    'electronic',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home', style: TextStyle(fontSize: 25, color: Colors.teal)),
        actions: [
          Icon(Icons.shopping_bag_outlined, size: 25),
          SizedBox(width: 20),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star_border_rounded,
                  size: 30,
                  color: Colors.teal.shade900,
                ),
                SizedBox(width: 20),
                Text(
                  'Recommended For You',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(30),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tune_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  height: 70,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                    ),
                  ),

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      final itemTitle = itemCategoryTitle[index];
                      final itemIcons = itemCategoryIcon[index];
                      return Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        constraints: const BoxConstraints(
                          minWidth: 100,
                          maxWidth: 170,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/$itemIcons.png',
                              height: 28,
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                itemTitle,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.67,
              ),
              itemBuilder: (context, index) {
                final data = itemData[index];
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  elevation: 3,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.vertical(
                            top: Radius.circular(15),
                          ),
                          child: Image.network(
                            "https://static.yourprint.in/new-admin-ajax.php?action=resize_outer_image&cfcache=all&url=s3-media/d-i-o/Tshirts/Men/tshirt_hs_men_pat_d48_o.jpg&resizeTo=600",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["itemName"],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.teal.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              data["itemPrice"],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data["itemSales"],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber),
                                    Text(
                                      data["itemRatings"].toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
