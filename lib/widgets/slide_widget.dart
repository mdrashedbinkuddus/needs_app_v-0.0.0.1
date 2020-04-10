import 'package:flutter/material.dart';
import 'package:needs/model/slide_model.dart';

class SlideWidget extends StatefulWidget {


  final int index;
  SlideWidget(this.index);

  @override
  _SlideWidgetState createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  @override
  Widget build(BuildContext context) {

    final deviceSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: deviceSize.height * .3,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(sildeList[widget.index].imageURL),
              )),
        ),
        Text(
          sildeList[widget.index].title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Text(
            sildeList[widget.index].description,
            textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
