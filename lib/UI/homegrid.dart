import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_app/provider/provider.dart';

class SelectionCategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _work = Provider.of<Update>(context);
    return Container(
      height: MediaQuery.of(context).size.height / 12 * 7,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 9,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                  Img(_work.getImages()[index]),
                  Text(
                    _work.getServices()[index],
                    softWrap: false,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ])),
            color: Colors.white,
            margin: EdgeInsets.all(1.0),
          );
        },
      ),
    );
  }

  Widget Img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.fill,
      height: 40,
      width: 40,
    );
  }
}
