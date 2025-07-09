import 'package:flutter/material.dart';

class CorporationJoin extends StatefulWidget {
  const CorporationJoin({super.key});

  @override
  State<CorporationJoin> createState() => _CorporationJoinState();
}

class _CorporationJoinState extends State<CorporationJoin> {
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
    return Container(
      width: 393,
      height: 852,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'STEP 2: 기업 정보 입력 화면입니다.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  step = 2;
                });
              },
              child: const Text('다음'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep3() {
    return Container(
      width: 393,
      height: 852,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'STEP 3: 약관 동의 및 제출 화면입니다.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 제출 로직 또는 완료 페이지 이동
              },
              child: const Text('제출'),
            ),
          ],
        ),
      ),
    );
  }
}
