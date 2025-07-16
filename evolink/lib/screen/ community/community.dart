import 'package:evolink/screen/%20community/communityadd.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Maincommunity extends StatefulWidget {
  const Maincommunity({super.key});

  @override
  State<Maincommunity> createState() => _MaincommunityState();
}

class _MaincommunityState extends State<Maincommunity> {
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
                    left: 30,
                    top: 10,
                    child: Text(
                      '커뮤니티',
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
                    left: 30,
                    top: 161,
                    child: Text(
                      '태그로 좀 더 구체적인 모집글을 찾아보세요',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 303,
                    child: Text(
                      '김에보님 지금 가장 핫한 모집글이에요!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                    ),
                  ),

                  Positioned(
                    left: 30,
                    top: 70,
                    child: Container(
                      width: 333,
                      height: 37,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
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
                            left: 10,
                            top: 6,
                            child: Container(
                              width: 24,
                              height: 24,
                              child: GestureDetector(
                                child: SvgPicture.asset(
                                  'assets/images/frame_inspect.svg',
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 47,
                            top: 10,
                            child: Text(
                              '관심있는 프로젝트를 찾아보세요!',
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
                  ),
                  Positioned(
                    left: 30,
                    top: 215,
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        'assets/images/label.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64,
                    top: 218,
                    child: Text(
                      '산업 : ',
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
                    left: 169,
                    top: 218,
                    child: Text(
                      '기술 : ',
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
                    left: 274,
                    top: 218,
                    child: Text(
                      '협업자: ',
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
                    //첫 번째
                    left: 30,
                    top: 359,
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/images.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 508,
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        '저랑 같이 김치 만두 빚으실 분 장\n인 우대합니다 약 30년 경력 우대',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 560,
                    child: Text(
                      '산업 : 요식업 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 560,
                    child: Text(
                      '기술 : 한식 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 105,
                    top: 600,
                    child: Container(
                      width: 45,
                      height: 16,
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
                    left: 29,
                    top: 600,
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
                    left: 52,
                    top: 600,
                    child: Text(
                      '다그만두자',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 600,
                    child: Text(
                      '프리랜서',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 330,
                    top: 10,
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        'assets/images/edit_document.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 330,
                    top: 10,
                    child: GestureDetector(
                      onTap: () {
                        print('아이콘 클릭됨');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    Communityadd(), // ← 이 페이지가 정상 구현되어 있어야 함
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/edit_document.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    //두 번째
                    left: 210,
                    top: 359,
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/images.jpeg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 210,
                    top: 508,
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        '저랑 같이 김치 만두 빚으실 분 장\n인 우대합니다 약 30년 경력 우대',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 210,
                    top: 560,
                    child: Text(
                      '산업 : 요식업 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 280,
                    top: 560,
                    child: Text(
                      '기술 : 한식 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 287,
                    top: 600,
                    child: Container(
                      width: 45,
                      height: 16,
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
                    left: 210,
                    top: 600,
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
                    left: 233,
                    top: 600,
                    child: Text(
                      '다그만두자',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 291,
                    top: 600,
                    child: Text(
                      '프리랜서',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
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

          //네브바
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
                                'assets/images/check_circle.svg',
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
