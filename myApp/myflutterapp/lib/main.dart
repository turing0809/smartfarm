import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
      body: Column(
        children: [
          SizedBox(width: 100, height: 100,),
          Row(
            children: [
              Column(
                children: [
                  Text("test",style: TextStyle(backgroundColor: Colors.red),),
                  Text("test2"),
                  Text("test3"),
                ],
              ),
            ],
          ),
          Row(children: [
            Text("test4")
          ],)
        ],
      ),
    );
  }
}

class EcSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EC 값 수정'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // EC 값 수정 필드
            TextField(
              decoration: InputDecoration(
                labelText: '새로운 EC 값 입력',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),

            // 저장 버튼
            ElevatedButton(
              onPressed: () {
                // EC 값 저장 후 홈 화면으로 돌아가기
                Navigator.pop(context);
              },
              child: Text('저장'),
            ),
          ],
        ),
      ),
    );
  }
}