import 'package:flutter/material.dart';
import 'package:red_social/ui/widgets/card.dart';

class StateCard extends StatelessWidget {
  final String title, content, picUrl;
  final VoidCallback onDelete;

  // StateCard constructor
  const StateCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.picUrl,
      required this.onDelete})
      : super(key: key);

  // We create a Stateless widget that contais an AppCard,
  // Passing all the customizable views as parameters
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return AppCard(
      key: const Key("statusCard"),
      title: title,
      content: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      // topLeftWidget widget as an Avatar
      topLeftWidget: SizedBox(
        height: 48.0,
        width: 48.0,
        child: Center(
          child: CircleAvatar(
            minRadius: 14.0,
            maxRadius: 14.0,
            backgroundImage: NetworkImage(picUrl),
          ),
        ),
      ),
      // topRightWidget widget as an IconButton
      topRightWidget: IconButton(
        icon: Icon(
          Icons.close,
          color: primaryColor,
        ),
        onPressed: onDelete,
      ),
    );
  }
}
