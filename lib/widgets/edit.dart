import 'package:flutter/material.dart';
import 'package:project_kelompok_mobile/models/story_model.dart';
import 'package:project_kelompok_mobile/pages/titlePage.dart';
import 'package:project_kelompok_mobile/providers/storyAdd.dart';
import 'package:provider/provider.dart';
import '../models/story.dart';

// 1 widget pada edit

class EditWidget extends StatelessWidget {
  const EditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 5),
      child: Container(
        width: 500,
        height: 130,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image(
                image: NetworkImage(
                    "https://lh3.googleusercontent.com/-j2p69g-yhEQ/AAAAAAAAAAI/AAAAAAAAABw/QkAzfV67nXE/s46-c-k-no/photo.jpg"),
                width: 90,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 1),
                    child: SizedBox(
                      width: 250,
                      child: Text("data.title",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              fontFamily: "Montserrat")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text("data.writer",
                        style: const TextStyle(
                            color: Colors.pink,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat")),
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      "data.description",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black,
                          height: 1.5,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 13,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.black),
                          child: Center(
                              child: Text(
                            "data.categories",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat"),
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.edit),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(Icons.delete),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
