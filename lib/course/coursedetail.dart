import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'course_start.dart';

class CourseDetail extends StatefulWidget {
  // const CourseDetail({ Key? key }) : super(key: key);

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  Size size;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  Widget mainWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.pink.shade50,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date started",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "Participants",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("29 July 2020"),
              Text("Users Avatar"),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: Colors.blue.shade900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => CourseStart()));
              }),
          SizedBox(height: size.height * 0.03),
          Text(
              "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ")
        ]),
      ),
    );
  }

  Widget reviews() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  title: Text("Fletch Skinner"),
                  trailing: Container(
                    height: 20,
                    // width: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, size: 14),
                        Icon(Icons.star, size: 14),
                        Icon(Icons.star, size: 14),
                        Icon(Icons.star_outline, size: 14),
                        Icon(Icons.star_outline, size: 14),
                      ],
                    ),
                  ),
                  subtitle: Text(
                      "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed d"),
                  leading: CircleAvatar(backgroundColor: Colors.blue.shade100));
            }),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: RatingBar.builder(
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                unratedColor: Colors.white30,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              alignment: Alignment.center,
              height: size.height * 0.06,
              width: double.infinity,
              color: Colors.blue.shade900,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 10,
                        child: Icon(Icons.send, color: Colors.white),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  hintText: 'Write a review....',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget discussions() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  title: Text("Fletch Skinner"),
                  trailing: Text(
                    "09:00AM",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  subtitle: Text(
                      "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed d"),
                  leading: CircleAvatar(backgroundColor: Colors.blue.shade100));
            }),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 10,
                        width: 10,
                        child: Icon(Icons.send, color: Colors.grey),
                        decoration: BoxDecoration(
                            //  color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  hintText: 'Type a message....',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          centerTitle: true,
          actions: [],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text("Home"),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
              return [
                SliverToBoxAdapter(child: mainWidget()),
                SliverPersistentHeader(
                  delegate: CustomSliverDelegate(_tabController),
                  pinned: true,
                  floating: false,
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                discussions(),
                reviews(),
              ],
            )));
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final TabController _tabController;

  CustomSliverDelegate(this._tabController);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50.0,
      color: Colors.white,
      child: TabBar(
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        controller: _tabController,
        indicatorColor: Colors.blue.shade800,
        tabs: <Widget>[
          Text(
            "Discussions",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "Review",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
