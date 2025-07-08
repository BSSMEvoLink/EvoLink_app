import 'package:flutter/material.dart';

class Mainlogin extends StatefulWidget {
  const Mainlogin({super.key});

  @override
  State<Mainlogin> createState() => _MainloginState();
}

class _MainloginState extends State<Mainlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Stack(
        children: [
          Container(
            width: 393,
            height: 852,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 0,
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                Positioned(
                  left: 42,
                  top: 211,
                  child: Text(
                    '회원가입 종류를 선택해주세요',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                Positioned(
                  left: 78,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '기업',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 201.08,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '개인',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 320,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '지자체',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 42,
                  top: 362,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
