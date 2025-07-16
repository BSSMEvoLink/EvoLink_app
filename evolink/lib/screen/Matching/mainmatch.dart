import 'package:evolink/screen/%20community/community.dart';
import 'package:evolink/screen/Matching/matching.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';

class Mainmatch extends StatefulWidget {
  const Mainmatch({super.key});

  @override
  State<Mainmatch> createState() => _MainmatchState();
}

class _MainmatchState extends State<Mainmatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: 393,
              height: 852,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 29,
                    top: 10,
                    child: Text(
                      '매칭',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 62,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '원하는 태그를 선택해 EvoLink의 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.24,
                            ),
                          ),
                          TextSpan(
                            text: '매칭 상대',
                            style: TextStyle(
                              color: const Color(0xFFFC7B03),
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.24,
                            ),
                          ),
                          TextSpan(
                            text: '를 만나보세요',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 120,
                    child: Text(
                      '프로젝트 분야',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 158,
                    child: Container(
                      width: 333,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 328,
                    top: 168,
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
                    top: 171,
                    child: Text(
                      'IT',
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
                    //80
                    left: 30,
                    top: 240,
                    child: Text(
                      '원하는 기술 스택',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 278,
                    child: Container(
                      width: 333,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 328,
                    top: 288,
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
                    top: 291,
                    child: Text(
                      '디자이너',
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
                    top: 358,
                    child: Text(
                      '원하는 협업자',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 396,
                    child: Container(
                      width: 333,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 328,
                    top: 406,
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
                    top: 409,
                    child: Text(
                      '프리랜서',
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
                    top: 476,
                    child: Text(
                      '원하는 매칭 지역 (선택)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 516,
                    child: Container(
                      width: 333,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 328,
                    top: 526,
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
                    top: 529,
                    child: Text(
                      '부산광역시',
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
                    left: 156,
                    top: 600,
                    child: Container(
                      width: 85,
                      height: 33,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 31,
                            top: 7,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => Matching(), // ← 이동할 페이지
                                  ),
                                );
                              },
                              child: Text(
                                '매칭',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 651,
            child: Container(
              width: 393,
              height: 57,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.50, color: const Color(0xFFFC7B03)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 37,
                    top: 4,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 70,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mainscrren(),
                                  ), // 이동할 페이지 위젯
                                );
                              },
                              child: SvgPicture.asset(
                                'assets/images/home.svg',
                                width: 22,
                                height: 22,
                                color: const Color(0xFFFC7B03),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Maincommunity(),
                                  ), // 이동할 페이지 위젯
                                );
                              },
                              child: SvgPicture.asset(
                                'assets/images/edit_square.svg',
                                width: 22,
                                height: 22,
                                color: const Color(0xFFFC7B03),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mainmatch(),
                                  ), // 이동할 페이지 위젯
                                );
                              },
                              child: SvgPicture.asset(
                                'assets/images/chat_bubble.svg',
                                width: 22,
                                height: 22,
                                color: const Color(0xFFFC7B03),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mypage(),
                                  ), // 이동할 페이지 위젯
                                );
                              },
                              child: SvgPicture.asset(
                                'assets/images/account_circle.svg',
                                width: 22,
                                height: 22,
                                color: const Color(0xFFFC7B03),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 38,
                    child: Text(
                      '홈',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 136,
                    top: 38,
                    child: Text(
                      '커뮤니티',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 237,
                    top: 38,
                    child: Text(
                      '매칭',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 318,
                    top: 38,
                    child: Text(
                      '마이페이지',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
