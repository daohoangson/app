import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class PageButton extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String description;
  final double borderRadius;
  final Function onPressed;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final TextStyle titleStyle;

  // TODO: Let's move the positional args to named args.
  const PageButton(
    this.backgroundColor,
    this.title,
    this.onPressed, {
    this.description = "",
    this.borderRadius = 25.0,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.end,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.borderRadius)),
      color: backgroundColor,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: this.crossAxisAlignment,
            mainAxisAlignment: this.mainAxisAlignment,
            children: <Widget>[
              Text(
                this.title,
                textScaleFactor: 1.0 + 0.6 * contentScale(context),
                textAlign: TextAlign.left,
                style: titleStyle ?? TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 4),
              this.description.isNotEmpty
                  ? Text(
                      this.description,
                      textAlign: TextAlign.left,
                      textScaleFactor: 0.9 + 0.5 * contentScale(context),
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  : Container()
            ],
          )),
      onPressed: this.onPressed,
    );
  }
  
}
