import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cloth_class.dart';

class BagList extends StatefulWidget {
  @override
  _BagListState createState() => _BagListState();
}

class _BagListState extends State<BagList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'BAG',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context))
    );
  }
}

getHomePageBody(BuildContext context) {
  return new Container(
      child: GridView.builder(
        itemCount: BagCloths.length,
        itemBuilder: _getItemUI,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/5,
        ),
      )
  );
}

Widget _getItemUI(BuildContext context, int index) {
  return Card(
    elevation: 2,
    color: Colors.white60,
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Image.asset(BagCloths[index].image),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(BagCloths[index].name),
            subtitle: Text(
                "${BagCloths[index].season_attribute}, "
                    "${BagCloths[index].part_attribute}, "
                    "${BagCloths[index].color_attribute}, "
                    "${BagCloths[index].size_attribute}, "
                    "${BagCloths[index].style_attribute}, "
                    "${BagCloths[index].material_attribute}, "
                    "${BagCloths[index].occasion_attribute}"
            ),
          ),
        )
      ],
    ),
  );
}