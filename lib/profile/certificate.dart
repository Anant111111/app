import 'package:flutter/material.dart';

class Certificate extends StatefulWidget {
  @override
  _CertificateState createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        actions: [],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Certificate"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("Hi! Parsley", style: TextStyle(fontSize: 35)),
                  )),
              SizedBox(height: 30),
              Text("Your Certificates", style: TextStyle(fontSize: 17)),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  focusColor: Colors.pink.shade50,
                  hoverColor: Colors.pink.shade50,
                  subtitle: Text("Created at 10-01-2021"),
                  title: Text("Web Designing Certificate"),
                  trailing: Container(
                      decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.blue, width: 1),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.file_download, color: Colors.blue),
                      )),
                  leading: Icon(Icons.airplanemode_active_outlined,
                      color: Colors.red),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  focusColor: Colors.pink.shade50,
                  hoverColor: Colors.pink.shade50,
                  subtitle: Text("Created at 13-03-2021"),
                  title: Text("Graphic Designing Certificate"),
                  trailing: Container(
                      decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.orange, width: 1),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.file_download, color: Colors.orange),
                      )),
                  leading: Icon(Icons.backpack, color: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
