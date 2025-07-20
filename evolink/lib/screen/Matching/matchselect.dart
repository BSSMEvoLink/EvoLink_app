import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/Matching/matchlist.dart';

// 전역 매칭 리스트 (다른 파일에서 import로 접근 가능)
List<Map<String, dynamic>> matchedUsers = [];

class Matchselect extends StatefulWidget {
  const Matchselect({super.key});

  // 매칭일자 static 변수 선언
  static String matchDate = '';

  @override
  State<Matchselect> createState() => _MatchselectState();
}

class _MatchselectState extends State<Matchselect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 29,
                top: 139,
                child: Text(
                  '매칭',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
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
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Mainscrren(),
                                      ),
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
                                      ),
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
                                        builder: (context) => Matchselect(),
                                      ),
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
                                      ),
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
                          textAlign: TextAlign.center,
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
                          textAlign: TextAlign.center,
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
                          textAlign: TextAlign.center,
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
              Positioned(
                left: 29,
                top: 185,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '원하는 태그를 선택해 EvoLink의 ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
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
                          decoration: TextDecoration.none,
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
                          decoration: TextDecoration.none,
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
                left: 29,
                top: 299,
                child: GestureDetector(
                  onTap: () {
                    // 오늘 날짜로 matchDate 세팅
                    final now = DateTime.now();
                    Matchselect.matchDate =
                        '${now.month.toString().padLeft(2, '0')}/${now.day.toString().padLeft(2, '0')}';
                    // 매칭한 사람 이름과 날짜 추가
                    matchedUsers.add({
                      'name': '이부산디자', // 실제 선택된 매칭 대상 이름으로 교체 필요
                      'date': now,
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainmatch()),
                    );
                  },
                  child: Container(
                    width: 341,
                    height: 140,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFFFAC1E),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 344,
                child: Container(
                  width: 50,
                  height: 50,
                  child: SvgPicture.asset(
                    'assets/images/group.svg',
                    width: 22,
                    height: 22,
                    color: const Color(0xFFFC7B03),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 137,
                top: 344,
                child: Text(
                  '매칭하기',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              Positioned(
                left: 137,
                top: 380,
                child: Text(
                  '분야, 기술태그,지역을 기반으로 매칭을 해보세요!',
                  textAlign: TextAlign.center,
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
                left: 29,
                top: 461,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Matchlist()),
                    );
                  },
                  child: Container(
                    width: 341,
                    height: 140,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xFFFFAC1E),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 137,
                top: 500,
                child: Text(
                  '매칭내역',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              Positioned(
                left: 136,
                top: 542,
                child: SizedBox(
                  width: 224,
                  child: Text(
                    '매칭된 사람들과 함께 채팅을 통해 \n프로젝트를 진행하세요!',
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
              ),
              Positioned(
                left: 59,
                top: 505,
                child: Container(
                  width: 50,
                  height: 50,
                  child: SvgPicture.asset(
                    'assets/images/chat_bubble.svg',
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
      ],
    );
  }
}
