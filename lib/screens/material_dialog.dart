import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class MaterialDialog extends StatelessWidget {
  const MaterialDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Material Dialog',
          style: kTitleStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () => Dialogs.materialDialog(
                          context: context,
                          title: 'Delete',
                          msg: 'Are you sure?',
                          color: Colors.white,
                          actions: [
                            IconsOutlineButton(
                              onPressed: () {},
                              text: 'Cancel',
                              iconData: Icons.cancel_outlined,
                              textStyle: TextStyle(color: Colors.grey),
                              iconColor: Colors.grey,
                            ),
                            IconsButton(
                              onPressed: () {},
                              text: 'Delete',
                              iconData: Icons.delete,
                              color: Colors.green,
                              textStyle: TextStyle(color: Colors.white),
                              iconColor: Colors.white,
                            ),
                          ]),
                  child: Text(
                    'Material Dialog',
                    style: kTextStyle,
                  )),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () => Dialogs.bottomMaterialDialog(
                      context: context,
                      title: 'Edit',
                      msg: 'Do you wanna edit your name',
                      color: Colors.white,
                      actions: [
                        IconsOutlineButton(
                          onPressed: () {
                          },
                          text: 'Cancel',
                          iconData: Icons.cancel_outlined,
                          textStyle: TextStyle(color: Colors.grey),
                          iconColor: Colors.grey,
                        ),
                        IconsButton(
                          onPressed: () {},
                          text: 'Edit',
                          iconData: Icons.edit,
                          color: Colors.green,
                          textStyle: TextStyle(color: Colors.white),
                          iconColor: Colors.white,
                        ),
                      ]),
                  child: Text(
                    'Bottom Dialog',
                    style: kTextStyle,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
