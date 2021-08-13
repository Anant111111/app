import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mock_success.dart';

class MockQuestion extends StatefulWidget {
  @override
  _MockQuestionState createState() => _MockQuestionState();
}

class _MockQuestionState extends State<MockQuestion> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        actions: [],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Mock Test"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Question 1",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text("1 of 15",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Text(
                  """Lorem ipsum dolor sit amet. Ut quia impedit sit voluptate tempora cum iure neque ut dolores itaque ea rerum quaerat ut numquam enim. Eos perferendis aut ratione quam aut Quis voluptas sed quia natus. Qui quos blanditiis eos natus impedit qui galisum laboriosam et voluptatem delectus et voluptates quisquam est harum dolorem est voluptatum repellendus.
Aut error consequatur dolores esse eos repellendus quod 33 illo maiores At excepturi voluptate et vero voluptas 33 quia dolorem? Eos impedit consectetur id recusandae quaerat ad deserunt rerum qui molestiae fugiat. Et voluptates molestiae quo autem itaque ad laborum aliquam vel consequatur rerum aut omnis commodi et deserunt esse. """,
                  style: TextStyle(color: Colors.grey.shade700)),
              SizedBox(height: size.height * 0.02),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(17)),
                height: size.height * 0.35,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your answer!!"),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              RaisedButton(
                  color: Colors.blue.shade800,
                  child: Text("Submit", style: TextStyle(color: Colors.white)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19)),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => MockSuccess()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
