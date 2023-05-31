import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorites.dart';

// halaman deskripsi cerita

class TitlePage extends StatelessWidget {
  String id;
  String title;
  String description;
  String writer;
  String category;
  String image;

  TitlePage(this.id, this.title, this.description, this.writer, this.category,
      this.image,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 70,
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            padding: const EdgeInsets.only(left: 10),
            iconSize: 30,
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(95, 23, 0, 20),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 160,
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image(
                        image: NetworkImage(image),
                        height: 160,
                        width: 120,
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage('images/image 1.png'),
                      ),
                    ),
                    Text(
                      writer,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 15),
                child: Container(
                  width: 50,
                  height: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black),
                  child: Center(
                      child: Text(
                    category,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Container(
                      width: 365,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(description),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: SizedBox(
                      height: 60,
                      width: 200,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor:
                              const Color.fromARGB(255, 220, 182, 195),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Start Reading",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Monserrat",
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: SizedBox(
                      height: 60,
                      width: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Provider.of<Favorites>(context, listen: false)
                                .addFavs(id, title, description, writer,
                                    category, image);
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 220, 182, 195),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.all(10)),
                          child: const Icon(Icons.add)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
