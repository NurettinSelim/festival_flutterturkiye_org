import 'package:flutter/material.dart';

import '../../styles/theme_helper.dart';
import 'app_bar_title.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  final List<Widget> actions;
  final Widget leading;
  final bool isCenterTitle;

  const BaseAppBar({
    Key key,
    @required this.actions,
    this.leading,
    this.isCenterTitle = false,
  })  : assert(actions != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeHelper.cardBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: AppBarTitle(),
      centerTitle: isCenterTitle,
      actions: actions,
      leading: leading ?? SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}