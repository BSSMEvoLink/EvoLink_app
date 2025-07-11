import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              : step == 2
              ? _buildStep3()
              : _buildStep4(), // 🔥 step == 3일 때 실행될 함수
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
              top: 600,
              child: Container(
                width: 328,
                height: 50,
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
              top: 90,
              child: Text(
                '회사명을 작성해주세요',
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
              left: 29,
              top: 120, //15차이
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
              left: 38,
              top: 134,
              child: Text(
                '회사명을 작성해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
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
                                '사업자등록번호를 입력해주세요',
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
                              left: 18,
                              top: 15,
                              child: Text(
                                '검증하기',
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
                        '사업자등록번호',
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
                '사업자등록번호 인증이 완료되었습니다',
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
              top: 330,
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
                                '사업등록증을 업로드해주세요',
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
                              left: 24,
                              top: 15,
                              child: Text(
                                '업로드',
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
                        '사업등록증 업로드',
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
              child: Text(
                '기업 유형을 선택해주세요',
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
              top: 460,
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
              left: 329,
              top: 470,
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/keyboard_arrow_down.svg',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 42,
              top: 473,
              child: Text(
                '스타트업',
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
              left: 32,
              top: 600,
              child: Container(
                width: 328,
                height: 50,
                child: Container(
                  width: 328,
                  height: 50,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('클릭됨');
                        step = 3;
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
              top: 115,
              child: Text(
                '담당자 성함 (선택)',
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
              top: 63,
              child: Text(
                '아래의 정보는 귀사의 신뢰도를 높히고, 매칭을 더 쉽게 만들어드립니다.',
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
              top: 150,
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
              top: 165,
              child: Text(
                '담당자 성함을 입력해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 218,
              child: Text(
                '담당자 직함(선택)',
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
              top: 253,
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
              top: 268,
              child: Text(
                '담당자 직함을 입력해주세요',
                style: TextStyle(
                  color: const Color(0xFFCCCCCC),
                  fontSize: 10,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 343,
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
                                '회사 이메일을 입력해주세요',
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
                        '회사 이메일 (선택)',
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
              top: 447,
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
                                '회사 인증번호를 입력해주세요',
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
                        '회사 이메일 인증 (선택)',
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
              left: 34,
              top: 541,
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
          ],
        ),
      ),
    );
  }
}

Widget _buildStep4() {
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
                      '로그인하기',
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
            left: 30,
            top: 90,
            child: Text(
              '기업을 소개해주세요',
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
            top: 120,
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
            top: 134,
            child: Text(
              '기업을 소개해주세요',
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
            top: 250,
            child: Text(
              '사용 목적을 선택해주세요 (중복 선택 가능)',
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
            top: 280,
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
            left: 328,
            top: 290,
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/images/keyboard_arrow_down.svg',
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 43,
            top: 293,
            child: Text(
              '인재 발굴 및 지역 네트워크',
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
            top: 400,
            child: Text(
              '산업 분야를 입력해주세요',
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
            top: 430,
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
            left: 60,
            top: 444,
            child: Text(
              '산업 분야를 입력해주세요',
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
            left: 43,
            top: 440,
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
        ],
      ),
    ),
  );
}
