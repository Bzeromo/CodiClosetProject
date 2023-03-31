import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:realcodicloset/bag_list.dart';
import 'package:realcodicloset/bottom_list.dart';
import 'package:realcodicloset/hat_list.dart';
import 'package:realcodicloset/shoes_list.dart';
import 'package:realcodicloset/src/controller/authentication_controller.dart';
import 'package:realcodicloset/src/controller/home_controller.dart';
import 'package:realcodicloset/top_list.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  child: Image.asset('images/home_hat.png'),
                  width: double.infinity,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HatList())
                  );
                },
              ),
              InkWell(
                child: Container(
                  child: Image.asset('images/home_top.png'),
                  width: double.infinity,
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TopList())
                  );
                },
              ),
              InkWell(
                child: Container(
                  child: Image.asset('images/home_bottom.png'),
                  width: double.infinity,
                ),
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => BottomList())
                  );
                },
              ),
              InkWell(
                child: Container(
                  child: Image.asset('images/home_shoes.png'),
                  width: double.infinity,
                ),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoesList())
                  );
                },
              ),
              InkWell(
                child: Container(
                  child: Image.asset('images/home_bag.png'),
                  width: double.infinity,
                ),
                onTap: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => BagList())
                  );
                },
              ),
              Expanded(
                child:
                GetBuilder<AuthenticationController>(builder: (controller) {
                  return Column(
                      children: [
                      ElevatedButton(onPressed: (){
                        controller.changeThumbnail(AuthenticationController.to.user!.uid);
                      }, child: const Text('이미지 등록'))
                    ]
                  );
                }),
              ),
            ],
          ),
        ),
      )
    );
  }
}
