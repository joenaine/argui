import 'package:argui/animation/FadeAnimation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int colorCategory = 0;
  void changeCategoryColor(int index) {
    colorCategory = index;
  }

  List<String> categories = [
    'All',
    'Sport',
    'Art',
    'Music',
    'Fashion',
  ];
  @override
  Widget build(BuildContext context) {
    List<String> pages = [
      '@elongated',
      '@gilesposture',
      '@elonmusk',
      '@lionelmessi',
    ];
    return Scaffold(
      backgroundColor: Colors.grey[150],
      appBar: AppBar(
        leading: FadeAnimation(1, Icon(Icons.menu)),
        iconTheme: IconThemeData(color: Colors.black),
        title: FadeAnimation(
          1,
          Text(
            'Home',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        actions: [
          FadeAnimation(1, Icon(CupertinoIcons.search)),
          SizedBox(width: 10)
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
              child: FadeAnimation(
                1.2,
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 24,
                            offset: Offset(0, 10))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.rhombus_fill,
                        color: Colors.blue,
                      ),
                      Text(
                        '14.25 ETH',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text('See All')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: FadeAnimation(
                      index - 0.4,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${index + 1}.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 145,
                                left: 30,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('FOLLOW'),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.black),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            pages[index],
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          changeCategoryColor(index);
                        });
                      },
                      child: FadeAnimation(
                        index - 0.3,
                        Text(
                          categories[index],
                          style: TextStyle(
                              fontSize: 24,
                              color: colorCategory == index
                                  ? Colors.deepPurple
                                  : Colors.black54),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: FadeAnimation(
                2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Active Monkeys',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text('05:19:26')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: FadeAnimation(
                2.2,
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 24,
                          offset: Offset(0, 10)),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/images/col1.jpg'),
                            ),
                            Positioned(
                              top: 12,
                              right: 20,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                label: Text(
                                  '37',
                                  style: TextStyle(color: Colors.black54),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ))),
                              ),
                            )
                          ],
                        ),
                        ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.amber),
                          title: Text('Purple Art'),
                          subtitle: Text('@josssticks'),
                          trailing: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              '1.24 ETH',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 24,
                    offset: Offset(0, 10))
              ]),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 32,
                color: Colors.amber,
              ),
              Icon(
                Icons.shopping_bag,
                size: 32,
                color: Colors.blue,
              ),
              Icon(
                Icons.favorite,
                size: 32,
                color: Colors.red,
              ),
              Icon(
                Icons.person,
                size: 32,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
