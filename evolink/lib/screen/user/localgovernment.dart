import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/main/mainscrren.dart';

class LocalgovernmentJoin extends StatefulWidget {
  const LocalgovernmentJoin({super.key});

  @override
  State<LocalgovernmentJoin> createState() => _LocalgovernmentJoinState();
}

class _LocalgovernmentJoinState extends State<LocalgovernmentJoin> {
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
              : _buildStep3(context),
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
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '이메일을 입력해주세요',
                            hintStyle: TextStyle(
                              color: const Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 12, top: 2),
                          ),
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
                        '공공기관 이메일',
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
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '인증번호를 입력해주세요',
                            hintStyle: TextStyle(
                              color: const Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 12, top: 2),
                          ),
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
                        '공공기관 이메일 인증',
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
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '비밀번호를 다시 입력해주세요',
                            hintStyle: TextStyle(
                              color: const Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 12, top: 2),
                          ),
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
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '비밀번호를 입력해주세요',
                            hintStyle: TextStyle(
                              color: const Color(0xFFB3B3B3),
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              height: 1.50,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15, top: 16),
                          ),
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
                '지자체명을 입력해주세요',
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
              left: 28,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '지자체명을 작성해주세요',
                    hintStyle: TextStyle(
                      color: const Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 9, top: 10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 200,
              child: Text(
                '부서명을 입력해주세요',
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
              top: 230,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '부서명을 입력해주세요',
                    hintStyle: TextStyle(
                      color: const Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 9, top: 10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 39,
              top: 244,
              child: Text(
                '담당자 성함을 입력해주세요',
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
              top: 330,
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
              left: 29,
              top: 360,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '담당자 직함을 입력해주세요',
                    hintStyle: TextStyle(
                      color: const Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 9, top: 10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 440,
              child: Text(
                '지역을 선택해주세요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.50,
                ),
              ),
            ),
            ProvinceDropdown(),
          ],
        ),
      ),
    );
  }

  Widget _buildStep3(BuildContext context) {
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
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  print('메인페이지 이동');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainscrren()),
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
                  alignment: Alignment.center,
                  child: const Text(
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
              top: 167,
              child: Text(
                '기관 등록 공문을 업로드 해주세요 (선택)',
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
              top: 220,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '에보링 협업 목적 기관 등록 확인 공문을 업로드해주세요',
                    hintStyle: TextStyle(
                      color: const Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 9, top: 10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 354,
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '에보링 등록 사유를 입력해주세요',
                    hintStyle: TextStyle(
                      color: const Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 9, top: 10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 303,
              child: Text(
                '등록 사유를 입력해주세요 (선택)',
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
    );
  }
}

class ProvinceDropdown extends StatefulWidget {
  const ProvinceDropdown({super.key});

  @override
  State<ProvinceDropdown> createState() => _ProvinceDropdownState();
}

class _ProvinceDropdownState extends State<ProvinceDropdown> {
  String selectedProvince = '부산광역시';
  bool showDropdown = false;
  String searchKeyword = '';

  final List<String> provinces = [
    '서울특별시',
    '부산광역시',
    '대구광역시',
    '인천광역시',
    '광주광역시',
    '대전광역시',
    '울산광역시',
    '세종특별자치시',
    '경기도',
    '강원특별자치도',
    '충청북도',
    '충청남도',
    '전라북도',
    '전라남도',
    '경상북도',
    '경상남도',
    '제주특별자치도',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> filteredList =
        provinces.where((item) => item.contains(searchKeyword)).toList();

    return Stack(
      children: [
        // 드롭다운 박스
        Positioned(
          left: 29,
          top: 470,
          child: Container(
            width: 333,
            height: 43,
            decoration: ShapeDecoration(
              color: const Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

        // 선택된 텍스트
        Positioned(
          left: 42,
          top: 484,
          child: Text(
            selectedProvince,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          ),
        ),

        // 화살표 버튼
        Positioned(
          left: 327,
          top: 480,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showDropdown = !showDropdown;
                searchKeyword = '';
              });
            },
            child: SvgPicture.asset(
              'assets/images/keyboard_arrow_down.svg',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ),

        if (showDropdown)
          Positioned(
            left: 29,
            top: 513,
            child: Container(
              width: 333,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  // 검색창
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchKeyword = value;
                        });
                      },
                      style: const TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        hintText: '검색',
                        hintStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFFB3B3B3),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color(0xFFFC7B03),
                          ),
                        ),
                        isDense: true,
                      ),
                    ),
                  ),

                  // 항목 리스트
                  for (final item in filteredList)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedProvince = item;
                          showDropdown = false;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
