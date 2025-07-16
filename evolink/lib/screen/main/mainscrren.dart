import 'package:evolink/screen/%20community/community.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mainscrren extends StatefulWidget {
  const Mainscrren({super.key});

  @override
  State<Mainscrren> createState() => _MainscrrenState();
}

class _MainscrrenState extends State<Mainscrren> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 393,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 20,
              top: 50,
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/Evolinklogo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              left: 300,
              top: 80,
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/notifications.svg',
                  width: 30,
                  height: 30,
                  color: const Color(0xFFFC7B03),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 340,
              top: 79,
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/lists.svg',
                  width: 30,
                  height: 30,
                  color: const Color(0xFFFC7B03),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 818,
              child: Container(
                width: 390,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 128,
                      top: 21,
                      child: Container(
                        width: 134,
                        height: 5,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 133,
              child: Container(
                width: 333,
                height: 78,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 7,
                      child: Text(
                        '안녕하세요 김에보님',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 43,
                      child: SizedBox(
                        width: 221,
                        child: Text(
                          '오늘도 EvoLink와 함께 협업해보세요!',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 253,
                      top: 7,
                      child: Container(
                        width: 77,
                        height: 36,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFFEFE),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.50,
                              color: const Color(0xFFFC7B03),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 269,
                      top: 17,
                      child: Text(
                        '프리랜서',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 18,
              top: 228,
              child: Container(
                width: 333,
                height: 92,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 34,
                      top: 34,
                      child: Text(
                        '(주)하링에서 포트폴리오에 관심을 눌렀습니다.',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 35,
                      top: 71,
                      child: Text(
                        '읽지 않은 메세지 3건이 존재합니다.',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 31,
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
                      left: 9,
                      top: 65,
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'assets/images/notifications.svg',
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
              left: 30,
              top: 228,
              child: Text(
                '오늘의 알림',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.24,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 355,
              child: Container(
                width: 333,
                height: 239,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        '김에보님 이런 프로젝트는 어떠세요?',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 43,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/100x100"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 150,
                      child: SizedBox(
                        width: 102,
                        child: Text(
                          '만두는갈비만두새우만두중\n토론하실분연락주세요',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 21,
                      top: 186,
                      child: Text(
                        '3',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: -1,
                      top: 183,
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'assets/images/favorite.svg',
                          width: 20,
                          height: 20,
                          color: const Color(0xFFFC7B03),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 43,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/images.jpeg',
                            ), // ← 로컬 이미지 경로
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 150,
                      child: SizedBox(
                        width: 102,
                        child: Text(
                          '만두는갈비만두새우만두중\n토론하실분연락주세요',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 212,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 116,
                      top: 43,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/images.jpeg',
                            ), // ← 로컬 이미지 경로
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 116,
                      top: 150,
                      child: SizedBox(
                        width: 102,
                        child: Text(
                          '만두는갈비만두새우만두중\n토론하실분연락주세요',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 138,
                      top: 186,
                      child: Text(
                        '3',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 116,
                      top: 212,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 116,
                      top: 184,
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'assets/images/favorite.svg',
                          width: 20,
                          height: 20,
                          color: const Color(0xFFFC7B03),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 232,
                      top: 43,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/images.jpeg',
                            ), // ← 로컬 이미지 경로
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 232,
                      top: 150,
                      child: SizedBox(
                        width: 102,
                        child: Text(
                          '만두는갈비만두새우만두중\n토론하실분연락주세요',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 253,
                      top: 186,
                      child: Text(
                        '3',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 249,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 232,
                      top: 212,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 249,
                      top: 214,
                      child: Text(
                        '만두는갈비만두',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 232,
                      top: 184,
                      child: GestureDetector(
                        child: SvgPicture.asset(
                          'assets/images/favorite.svg',
                          width: 20,
                          height: 20,
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
              left: 30,
              top: 620,
              child: Container(
                width: 333,
                height: 124,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        '김에보님의 협업 일정입니다',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 71,
                      top: 41,
                      child: Text(
                        '2025.10.02 ~ 2027. 09. 10',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
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
                        'D - 600',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 41,
                      child: Text(
                        '(주)하링',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 65,
                      child: Container(
                        width: 333,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color(0xFFB3B3B3),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 71,
                      top: 91,
                      child: Text(
                        '2025.10.02 ~ 2027. 09. 10',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 237,
                      top: 88,
                      child: Text(
                        'D - 600',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 91,
                      child: Text(
                        '(주)하링',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 115,
                      child: Container(
                        width: 333,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: const Color(0xFFB3B3B3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 761,
              child: Container(
                width: 393,
                height: 57,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      color: const Color(0xFFFC7B03),
                    ),
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
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
      ),
    );
  }
}
