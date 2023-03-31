import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'cloth_class.dart';

class HatList extends StatefulWidget {
  @override
  _HatListState createState() => _HatListState();
}

class _HatListState extends State<HatList>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'HAT/ACCESSORIES',
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
        itemCount: HatAccesasriesCloths.length,
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
          child: Image.asset(HatAccesasriesCloths[index].image),
        ),
        Expanded(
          flex: 2,
          child: ListTile(
            title: Text(HatAccesasriesCloths[index].name),
            subtitle: Text(
                "${HatAccesasriesCloths[index].season_attribute}, "
                    "${HatAccesasriesCloths[index].part_attribute}, "
                    "${HatAccesasriesCloths[index].color_attribute}, "
                    "${HatAccesasriesCloths[index].size_attribute}, "
                    "${HatAccesasriesCloths[index].style_attribute}, "
                    "${HatAccesasriesCloths[index].material_attribute}, "
                    "${HatAccesasriesCloths[index].occasion_attribute}"
            ),
          ),
        )
      ],
    ),
  );
}