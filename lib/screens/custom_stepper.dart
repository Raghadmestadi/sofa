import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper({
    required this.lowerlimit,
    required this.upperlimit,
    required this.stepvalue,
    required this.iconsize,
    required this.value,
    required this.onChanged,
  });

  final int lowerlimit;
  final int upperlimit;
  final int stepvalue;
  final double iconsize;
  int value;
  final ValueChanged<dynamic> onChanged;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  widget.value = widget.value == widget.lowerlimit
                      ? widget.lowerlimit
                      : widget.value -= widget.stepvalue;
                  this.widget.onChanged(widget.value);
                });
              },
            ),
            Container(
              width: this.widget.iconsize,
              child: Text(
                "${widget.value}",
                style: TextStyle(fontSize: widget.iconsize * 0.8),
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  widget.value = widget.value == widget.upperlimit
                      ? widget.upperlimit
                      : widget.value += widget.stepvalue;
                  this.widget.onChanged(widget.value);
                });
              },
            ),
          ],
        ));
  }
}
