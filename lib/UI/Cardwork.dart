import 'package:flutter/material.dart';

class CardWork extends StatelessWidget {
  final String text;
  final String sub;
  final String img;
  CardWork(this.text, this.sub, this.img);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8.0),
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 3,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    height: 8.0,
                  ),
                  Text(
                    sub,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.green, fontSize: 12),
                    textAlign: TextAlign.left,
                  )
                ]),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 10,
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: Image.network(
                  img,
                  fit: BoxFit.fill,
                ),
                height: MediaQuery.of(context).size.height / 10 * 1.5,
                width: MediaQuery.of(context).size.width / 2 * 0.75),
          ),
        ],
      ),
    );
  }
}
