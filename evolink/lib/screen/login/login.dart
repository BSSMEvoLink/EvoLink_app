import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/user/mainlogin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // 🔸 반드시 필요함!
      child: Column(
        children: [
          Container(
            width: 393,
            height: 852,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                // 로고
                Positioned(
                  left: 34,
                  top: 130,
                  child: SizedBox(
                    width: 328,
                    height: 300,
                    child: Image.asset(
                      'assets/images/Evolinklogo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // 이메일 입력
                Positioned(
                  left: 34,
                  top: 410,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '이메일',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF666666),
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 328,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFE6E6E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: TextField(
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                          decoration: const InputDecoration(
                            hintText: '이메일을 입력해주세요',
                            hintStyle: TextStyle(
                              color: Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 비밀번호 입력
                Positioned(
                  left: 34,
                  top: 510,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '비밀번호',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0xFF666666),
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: 328,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFE6E6E6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: TextField(
                          obscureText: true,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                          decoration: const InputDecoration(
                            hintText: '비밀번호를 입력해주세요',
                            hintStyle: TextStyle(
                              color: Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 로그인 버튼
                Positioned(
                  left: 34,
                  top: 647,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mainscrren(),
                        ),
                      );
                    },
                    child: Container(
                      width: 328,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFAC1E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Center(
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
                ),

                // 회원가입 안내
                const Positioned(
                  left: 102,
                  top: 716,
                  child: SizedBox(
                    width: 116,
                    height: 20,
                    child: Text(
                      '아직 회원이 아니시라면',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xFF7F7F7F),
                        fontSize: 12,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),

                // 회원가입 버튼
                Positioned(
                  left: 225,
                  top: 716,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mainlogin(),
                        ),
                      );
                    },
                    child: const SizedBox(
                      width: 66,
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
      ),
    );
  }
}
