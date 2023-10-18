import 'package:flutter/material.dart';

class GetApiTile extends StatelessWidget {
  final String title;
  final String body;
  GetApiTile({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: Colors.black,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.redAccent),
              ),
              SizedBox(
                height: 10,
              ),
              Text(title),
              SizedBox(
                height: 15,
              ),
              Text(
                'Body',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.indigoAccent),
              ),
              SizedBox(
                height: 10,
              ),
              Text(body),
            ],
          ),
        ),
      ),
    );
  }
}
