import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cloth_class.dart';

class ShoesList extends StatefulWidget {
  @override
  _ShoesListState createState() => _ShoesListState();
}

class _ShoesListState extends State<ShoesList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'SHOES',
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
        itemCount: ShoesCloths.length,
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
          child: Image.asset(ShoesCloths[index].image),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(ShoesCloths[index].name),
            subtitle: Text(
                "${ShoesCloths[index].season_attribute}, "
                    "${ShoesCloths[index].part_attribute}, "
                    "${ShoesCloths[index].color_attribute}, "
                    "${ShoesCloths[index].size_attribute}, "
                    "${ShoesCloths[index].style_attribute}, "
                    "${ShoesCloths[index].material_attribute}, "
                    "${ShoesCloths[index].occasion_attribute}"
            ),
          ),
        )
      ],
    ),
  );
}
