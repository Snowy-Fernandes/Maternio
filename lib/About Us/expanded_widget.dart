import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedWidget extends StatefulWidget {
  final String text;

  const ExpandedWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(151, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.length == ""
            ? Text(widget.text)
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      flag ? firstHalf : widget.text,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          flag = !flag;
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            "Show More",
                            style: GoogleFonts.akshar(color: Colors.white),
                          ),
                          Icon(
                            flag?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
  }
}
