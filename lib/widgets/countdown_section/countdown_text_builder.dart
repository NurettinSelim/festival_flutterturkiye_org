import 'package:flutter/material.dart';
import 'package:festival_flutterturkiye_org/widgets/countdown_section/countdown_exports.dart';
import 'package:festival_flutterturkiye_org/widgets/responsive_builder.dart';

class CountdownTextBuilder extends StatelessWidget {
  final List<TextSpan> textSpans;
  final FontWeight fontWeight;

  CountdownTextBuilder({
    Key key,
    @required this.textSpans,
    this.fontWeight = FontWeight.normal,
  })  : assert(textSpans != null),
        assert(textSpans.isNotEmpty),
        assert(fontWeight != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      smallWidget: CountdownText(
        textSpans: textSpans,
        fontSize: fontSizeSmall,
      ),
      mediumWidget: CountdownText(
        textSpans: textSpans,
        fontSize: fontSizeMedium,
      ),
      largeWidget: CountdownText(
        textSpans: textSpans,
        fontSize: fontSizeLarge,
      ),
    );
  }
}