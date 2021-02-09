import 'package:flutter/material.dart';
import 'package:yfobs_app/constant.dart';

class DefaultDropDown extends StatelessWidget {
  final int items;
  final String text;
  const DefaultDropDown({
    Key key,
    this.items,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.965,
      child: Column(
        children: [
          Expanded(
            child: Container(
              // color: kWhiteColor,
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.only(bottom: kRadius),
                itemCount: items,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: kWhiteColor,
                    dense: true,
                    title: Text(
                      'Text $index'.toUpperCase(),
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0.0,
                    color: kWhiteColor,
                  );
                },
              ),
            ),
          ),
          ListTile(
            tileColor: kWhiteColor,
            dense: true,
            title: Text('Cancel'.toUpperCase()),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
