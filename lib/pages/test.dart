import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final String text;

  Test({this.text}) : assert(text != null, 'text is required');

  @override
  State<StatefulWidget> createState() => TestState();
}

class TestState extends State<Test> {
  ScrollController _scrollController;

  final double delta = 10.0;

  @override
  void initState() {
    // print('screen width ${_getScreenWidth().toString()}');
    super.initState();

    _scrollController = ScrollController(initialScrollOffset: 0);
    _initState();

    Future.delayed(Duration(microseconds: 5000), () {
      Future.doWhile(() async {
        await _scroll();
        return true;
      });
    });
  }

  void _initState() {
    print('text width ' + _getTextWidth().toString());
  }

  Future<void> _scroll() async {
    // print('scroll start');
    // await _scrollController.animateTo(_scrollController.offset + (delta * 2),
    //     curve: Curves.bounceInOut, duration: Duration(microseconds: 200));

    // print('next');
    await _scrollController.animateTo(_scrollController.offset + (delta * 4),
        curve: Curves.linear, duration: Duration(seconds: 1));

    // print('final');
    // await _scrollController.animateTo(_scrollController.offset + delta * 2,
    //     curve: Curves.easeOut, duration: Duration(microseconds: 200));

    // await Future.delayed(Duration(milliseconds: 200));
    // return true;
  }

  double _getTextWidth() {
    final span = TextSpan(text: widget.text);
    final tp =
        TextPainter(text: span, maxLines: 1, textDirection: TextDirection.ltr);
    tp.layout(maxWidth: double.infinity);

    return tp.width;
  }

  // double _getScreenWidth() {
  //   final width = MediaQuery.of(context).size.width;
  //   return width;
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          // itemCount: 20,
          itemBuilder: (context, index) {
            return Center(child: Text(widget.text + '              '));
          },
        ),
      ),
    );
  }
}
