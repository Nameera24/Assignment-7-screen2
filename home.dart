import 'package:flutter/material.dart';
import 'package:flutter_application_6/book_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(25)),
                Text(
                  "Popular Now",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 230.0,
            child: ListView.builder(
                itemCount: sbooks.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var book = sbooks[index];
                  return Container(
                    width: 120.0,
                    height: 230.0,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 120.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(book.urlimage),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          book.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "${book.writer}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 10.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: 200,
            child: Text(
              "BestSeller",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black),
            ),
          ),
          Container(
            width: double.infinity,
            height: 260.0,
            child: ListView.builder(
                itemCount: pbooks.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var book1 = pbooks[index];
                  return Container(
                    width: 120.0,
                    height: 260.0,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 120.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(book1.urlimage),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          book1.name,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "${book1.writer}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 10.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
