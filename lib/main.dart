import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realcodicloset/feedpage.dart';
import 'package:realcodicloset/src/controller/home_controller.dart';
import 'src/controller/authentication_controller.dart';
import 'src/pages/home.dart';
import 'mypage.dart';
import 'feed.dart';
import 'codi.dart';

// 앱 시작 부분
void main () async{
  WidgetsFlutterBinding.ensureInitialized(); // async
  await Firebase.initializeApp(); // firebase 연동
  runApp(const MyApp());
}

// 시작 클래스, 머티리얼 디자인 앱 생성
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return GetMaterialApp(
      title: 'Flutter Demo',
        initialBinding: BindingsBuilder((){
          Get.put(AuthenticationController());
          Get.put(HomeController());
        }),
      theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: const LoginPage(), // 표시할 화면의 인스턴스
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("로그인"), backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// 현재 유저 로그인 상태
            Center(
              child: Text(
                "CODICLOSET",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 32),

            /// 이메일
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: "이메일"),
            ),

            /// 비밀번호
            TextField(
              controller: passwordController,
              obscureText: false, // 비밀번호 안보이게
              decoration: InputDecoration(hintText: "비밀번호"),
            ),
            SizedBox(height: 32),

            /// 로그인 버튼
            ElevatedButton(
              child: Text("로그인", style: TextStyle(fontSize: 21, color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black
              ),
              onPressed: () {
                // 로그인 성공시 HomePage로 이동
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => MyHomePage()),
                );
              },
            ),

            /// 회원가입 버튼
            ElevatedButton(
              child: Text("회원가입", style: TextStyle(fontSize: 21, color: Colors.white)),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black
              ),
              onPressed: () {
                // 회원가입
                print("sign up");
              },
            ),
          ],
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var _currentindex = 0; // 페이지 인덱스

  final List<Widget> _children = [Home(), Codi(), FeedPage(), Mypage()];
  void _onTap(int index){
    setState(() {
      _currentindex = index;
    });
  }

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CODICLOSET',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            child: Text(
              "로그아웃",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              print("sign out");
              // 로그인 페이지로 이동
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body:
        _children[_currentindex],
          bottomNavigationBar: DefaultTabController(
            length: 4,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
            onTap: _onTap,
            currentIndex: _currentindex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'home',
                icon: Icon(Icons.home, color: Colors.black),
              ),
              BottomNavigationBarItem(
                  label: 'codi',
                  icon: Icon(Icons.local_mall, color: Colors.black)
              ),
              BottomNavigationBarItem(
                  label: 'feed',
                  icon: Icon(Icons.insert_photo, color: Colors.black)
              ),
              BottomNavigationBarItem(
                  label: 'mypage',
                  icon: Icon(Icons.person, color: Colors.black)
              ),
            ]
      ),
          ),
    );
  }
}
