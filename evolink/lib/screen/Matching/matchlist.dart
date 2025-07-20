import 'package:evolink/screen/Matching/matchselect.dart' as matchselect;
import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:evolink/screen/Matching/matchchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Matchlist extends StatefulWidget {
  const Matchlist({super.key});

  @override
  State<Matchlist> createState() => _MatchlistState();
}

class _MatchlistState extends State<Matchlist> {
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
                top: 111,
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
                                        builder: (context) => matchselect.Matchselect(),
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
                top: 157,
                child: Text(
                  '매칭한 상대와 채팅을 통해 프로젝트를 성사시키세요',
                  textAlign: TextAlign.center,
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
              // 기존 하드코딩된 매칭 카드 대신 matchedUsers 리스트만 렌더링
              ...matchselect.matchedUsers.asMap().entries.map((entry) {
                final i = entry.key;
                final user = entry.value;
                final date = user['date'] as DateTime;
                return Positioned(
                  left: 29,
                  top: 223.0 + i * 104.0, // 카드 간격 조정 (double)
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Matchchat()),
                      );
                    },
                    child: Container(
                      width: 335,
                      height: 65,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFFAC1E),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 10,
                            top: 13,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFD9D9D9),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 68,
                            top: 24,
                            child: Text(
                              user['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 259,
                            top: 46,
                            child: Text(
                              '매칭일자 ${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 11,
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
                );
              }).toList(),
            ],
          ),
        ),
      ],
    );
  }
}
