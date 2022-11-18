import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildIndexedStack(),
    );
  }

  IndexedStack _buildIndexedStack() {
    return IndexedStack(
      index: _selectedIndex, // 현재 상태
      children: [
        Container( // index 박스 임의 설정 - 0번지
          color: Colors.orange[100], // [] 안의 숫자가 클수록 컬러 농도 높음
          child: Center(
            child: Text("IndexedStack 1", style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
        ),
        Container( // index 박스 임의 설정 - 1번지
          color: Colors.redAccent[100], // [] 안의 숫자가 클수록 컬러 농도 높음
          child: Center(
            child: Text("IndexedStack 2", style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
        )
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index){
        setState(() { // 선택한 화면 띄우기
          _selectedIndex = index;
        });
      },
      currentIndex: _selectedIndex, // 바텀네비게이션 선택 활성화 적용
      items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(CupertinoIcons.home),
        ),
        BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(CupertinoIcons.chat_bubble),
        ),
      ],
    );
  }
}
