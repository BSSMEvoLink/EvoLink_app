import 'package:flutter/material.dart';

class FreelancerJoin extends StatefulWidget {
  const FreelancerJoin({super.key});

  @override
  State<FreelancerJoin> createState() => _FreelancerJoinState();
}

class _FreelancerJoinState extends State<FreelancerJoin> {
  int step = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body:
          step == 0
              ? _buildStep1()
              : step == 1
              ? _buildStep2()
              : _buildStep3(),
    );
  }

  Widget _buildStep1() {
    return SingleChildScrollView(
      child: Container(
        width: 393,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 10,
              child: Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 90,
              child: Container(
                width: 337,
                height: 79,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 19,
                      child: Container(
                        width: 230,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF2F2F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 12,
                              top: 15,
                              child: Text(
                                '이메일을 입력해주세요',
                                style: TextStyle(
                                  color: const Color(0xFFB3B3B3),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 245,
                      top: 19,
                      child: Container(
                        width: 85,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFAC1E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Text(
                                '인증번호',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2,
                      top: -4,
                      child: Text(
                        '이메일',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 183,
              child: Container(
                width: 337,
                height: 79,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 19,
                      child: Container(
                        width: 230,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF2F2F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 12,
                              top: 15,
                              child: Text(
                                '인증번호를 입력해주세요',
                                style: TextStyle(
                                  color: const Color(0xFFB3B3B3),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 245,
                      top: 19,
                      child: Container(
                        width: 85,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFAC1E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Text(
                                '   확인',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2,
                      top: -4,
                      child: Text(
                        '이메일 인증',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 430,
              child: Container(
                width: 337,
                height: 79,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 19,
                      child: Container(
                        width: 230,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF2F2F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 12,
                              top: 15,
                              child: Text(
                                '비밀번호를 다시 입력해주세요',
                                style: TextStyle(
                                  color: const Color(0xFFB3B3B3),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 245,
                      top: 19,
                      child: Container(
                        width: 85,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFAC1E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Text(
                                '   확인',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 2,
                      top: -4,
                      child: Text(
                        '비밀번호',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 280,
              child: Text(
                '이메일 인증이 완료되었습니다',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 530,
              child: Text(
                '비밀번호가 일치합니다',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 320,
              child: Container(
                width: 328,
                height: 83,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 33,
                      child: Container(
                        width: 328,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF2F2F2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15,
                              top: 16,
                              child: Text(
                                '비밀번호를 입력해주세요',
                                style: TextStyle(
                                  color: const Color(0xFFB3B3B3),
                                  fontSize: 14,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 12,
                      child: Text(
                        '비밀번호',
                        style: TextStyle(
                          color: const Color(0xFF1A1A1A),
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 608,
              child: Container(
                width: 328,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print('클릭됨');
                      step = 1;
                    });
                  },
                  child: Container(
                    width: 328,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFAC1E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '다음',
                      style: TextStyle(
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
            Positioned(
              left: 105,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 189,
              top: 14.5,
              child: Container(
                width: 76,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 272,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep2() {
    return SingleChildScrollView(
      child: Container(
        width: 393,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 10,
              child: Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 608,
              child: Container(
                width: 328,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print('클릭됨');
                      step = 2;
                    });
                  },
                  child: Container(
                    width: 328,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFAC1E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '다음',
                      style: TextStyle(
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
            Positioned(
              left: 105,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 189,
              top: 14.5,
              child: Container(
                width: 76,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 272,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 430,
              child: Text(
                '기술 태그를 입력해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 465,
              child: Container(
                width: 333,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 62,
              top: 479,
              child: Text(
                '기술 스택을 입력해주세요',
                style: TextStyle(
                  color: const Color(0xFFB3B3B3),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 475,
              child: Text(
                '#',
                style: TextStyle(
                  color: const Color(0xFFB3B3B3),
                  fontSize: 17,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 90,
              child: Text(
                '사용자님의 닉네임을 작성해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 125,
              child: Container(
                width: 333,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 39,
              top: 139,
              child: Text(
                '사용자님의 닉네임을 작성해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 260,
              child: Text(
                '분야를 입력해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 300,
              child: Container(
                width: 333,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 313,
              child: Text(
                '디자인, 그래픽 디자인',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep3() {
    return SingleChildScrollView(
      child: Container(
        width: 393,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 10,
              child: Text(
                '회원가입',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 31,
              top: 600,
              child: Container(
                width: 328,
                height: 50,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFAC1E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 134,
                      top: 15,
                      child: Text(
                        ' 로그인하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 105,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 189,
              top: 14.5,
              child: Container(
                width: 76,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 272,
              top: 14.5,
              child: Container(
                width: 77,
                height: 15,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFC7B03),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 31,
              top: 95,
              child: Text(
                '사용자님을 소개해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 140,
              child: Container(
                width: 333,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 154,
              child: Text(
                '사용자님을 소개해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 300,
              child: Text(
                '포트폴리오 링크를 첨부해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 350,
              child: Container(
                width: 333,
                height: 43,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 364,
              child: Text(
                '포트폴리오 링크를 첨부해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
