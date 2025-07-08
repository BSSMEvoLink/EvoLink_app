import 'package:evolink/user/mainlogin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 34,
                top: 130,
                child: Container(
                  width: 328,
                  height: 300,
                  child: Image.asset(
                    'assets/images/Evolinklogo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 647,
                child: Container(
                  width: 328,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFAC1E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Center(
                    // 중앙 정렬을 위해 Center 위젯 사용
                    child: Text(
                      '로그인하기',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 410,
                child: Column(
                  // Column 위젯 사용하여 텍스트와 회색 박스를 세로로 배치
                  crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
                  children: [
                    Text(
                      '이메일', // 이메일 레이블 텍스트
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: const Color(0xFF666666),
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                    SizedBox(height: 8), // 이메일 텍스트와 회색 박스 사이에 간격 추가
                    Container(
                      width: 328,
                      height: 50,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE6E6E6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ), // 좌우 여백 추가
                        child: Align(
                          alignment: Alignment.centerLeft, // 텍스트 좌측 정렬
                          child: Text(
                            '이메일을 입력해주세요',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: const Color(0XFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 34,
                top: 510,
                child: Column(
                  // Column 위젯 사용하여 텍스트와 회색 박스를 세로로 배치
                  crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
                  children: [
                    Text(
                      '비밀번호', // 이메일 레이블 텍스트
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: const Color(0xFF666666),
                        fontSize: 14,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                    SizedBox(height: 8), // 이메일 텍스트와 회색 박스 사이에 간격 추가
                    Container(
                      width: 328,
                      height: 50,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE6E6E6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ), // 좌우 여백 추가
                        child: Align(
                          alignment: Alignment.centerLeft, // 텍스트 좌측 정렬
                          child: Text(
                            '비밀번호를 입력해주세요',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: const Color(0XFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 102,
                top: 716,
                child: SizedBox(
                  width: 116,
                  height: 20,
                  child: Text(
                    '아직 회원이 아니시라면',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: const Color(0xFF7F7F7F),
                      fontSize: 12,
                      fontFamily: 'Pretnedard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 225,
                top: 716,
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    print('회원가입하기 클릭');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          print('LoginJoin 페이지로 이동');
                          return const Mainlogin();
                        },
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 63,
                    height: 20,
                    child: Text(
                      '회원가입하기',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
