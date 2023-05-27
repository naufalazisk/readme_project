import 'package:flutter/material.dart';

// Ini digunakan untuk membuat cerita setelah memasukkan deskripsi dll

class AddPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 35,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 23, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(100, 10, 0, 10),
                child: Text("Part 1",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 15, 0),
            child: InkWell(
              // onTap: () => Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => TitlePage())),
              child: Text(
                "Publish",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: 500,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  )),
              child: const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    minLines: 1,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14, left: 13),
                      hintText: 'Part Title',
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 400,
                child: TextField(
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 13),
                    hintText: 'Start writing your story',
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
