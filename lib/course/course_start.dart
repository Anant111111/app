import 'dart:math';

import 'package:flutter/material.dart';

import 'coursedetail.dart';

class CourseStart extends StatefulWidget {
  @override
  _CourseStartState createState() => _CourseStartState();
}

class _CourseStartState extends State<CourseStart>
    with SingleTickerProviderStateMixin {
  Size size;
  TabController _tabController;
  final list = [
    "Introduction",
    "Reading",
    "Designing app Video",
    "Designing web",
    "Host app to store",
    "Host web to aws",
  ];
  var rng = new Random();

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  Widget mainWidget() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          height: size.height * 0.3,
        ),
        Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Desgining",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("5h/day"),
                      Text("36 hrs"),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 20,
                  width: size.width * 0.9,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                        width: size.width * 0.4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        width: size.width * 0.5,
                      )
                    ],
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                )
              ]),
        ),
        SizedBox(height: size.height * 0.03),
      ],
    );
  }

  Widget material() {
    return Container(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 0,
              ),
              leading: Container(
                  padding: EdgeInsets.all(7),
                  decoration: new BoxDecoration(
                    // borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.blue, width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.blue.shade900)),
              title: Text("Chapter ${index + 1}:${list[index]} "),
              subtitle: Text("${rng.nextInt(50)} Reading"),
            ),
          );
        },
      ),
    );
  }

  Widget download() {
    return Container(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (_, i) {
          return Container(color: Colors.white);
        },
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(18),
              ),
              leading: Icon(Icons.download_rounded),
              title: Text("Download file ${index + 1}"),
              // subtitle: Text("${rng.nextInt(50)} Reading"),
            ),
          );
        },
      ),
    );
  }

  Widget reviews() {
    return Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 3, horizontal: 5),
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
                  leading: CircleAvatar(backgroundColor: Colors.blue.shade100)),
            );
          }),
    );
  }

  Widget overview() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(19.0),
      child: Text(
          """Lorem ipsum dolor sit amet. Ut quia impedit sit voluptate tempora cum iure neque ut dolores itaque ea rerum quaerat ut numquam enim. Eos perferendis aut ratione quam aut Quis voluptas sed quia natus. Qui quos blanditiis eos natus impedit qui galisum laboriosam et voluptatem delectus et voluptates quisquam est harum dolorem est voluptatum repellendus.
Aut error consequatur dolores esse eos repellendus quod 33 illo maiores At excepturi voluptate et vero voluptas 33 quia dolorem? Eos impedit consectetur id recusandae quaerat ad deserunt rerum qui molestiae fugiat. Et voluptates molestiae quo autem itaque ad laborum aliquam vel consequatur rerum aut omnis commodi et deserunt esse. """),
    ));
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: NestedScrollView(
          physics: BouncingScrollPhysics(),
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
              material(),
              download(),
              overview(),
              reviews(),
            ],
          )),
    ));
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: TabBar(
          isScrollable: true,
          controller: _tabController,
          // give the indicator a decoration (color and border radius)
          indicator: BoxDecoration(
            border: Border.all(color: Colors.blue.shade900, width: 1),
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            // color: Colors.green,
          ),
          labelColor: Colors.black,
          unselectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Materials',
            ),
            Tab(
              text: 'Download',
            ),
            Tab(
              text: 'Overview',
            ),
            Tab(
              text: 'Reviews',
            ),
          ],
        ),
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
