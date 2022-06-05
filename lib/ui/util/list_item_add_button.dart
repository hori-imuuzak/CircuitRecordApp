import 'package:circuit_record/ui/theme/style.dart';
import 'package:flutter/material.dart';

class ListItemAddButton extends StatelessWidget {
  final VoidCallback onTap;

  const ListItemAddButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Style.spacing.medium),
      child: Material(
        color: Colors.white,
        child: InkWell(
          borderRadius: BorderRadius.circular(Style.circular.listItem),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Style.circular.listItem),
              border: Border.all(
                color: Style.gray.border,
                width: 1.0,
              ),
            ),
            padding: EdgeInsets.all(Style.spacing.medium),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    size: Style.iconSize.medium,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(width: Style.spacing.tiny),
                  const Text("追加する"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
