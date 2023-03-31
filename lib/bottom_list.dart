import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cloth_class.dart';

class BottomList extends StatefulWidget {
  @override
  _BottomListState createState() => _BottomListState();
}

class _BottomListState extends State<BottomList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'BOTTOM',
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
        itemCount: BottomCloths.length,
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
          child: Image.asset(BottomCloths[index].image),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(BottomCloths[index].name),
            subtitle: Text(
                "${BottomCloths[index].season_attribute}, "
                    "${BottomCloths[index].part_attribute}, "
                    "${BottomCloths[index].color_attribute}, "
                    "${BottomCloths[index].size_attribute}, "
                    "${BottomCloths[index].style_attribute}, "
                    "${BottomCloths[index].material_attribute}, "
                    "${BottomCloths[index].occasion_attribute}"
            ),
          ),
        )
      ],
    ),
  );
}