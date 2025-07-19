import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:evolink/screen/Matching/endmatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/models/match_person.dart';

class Matching extends StatefulWidget {
  final String industry;
  final String stack;
  final String userType;
  final String location;
  const Matching({
    super.key,
    required this.industry,
    required this.stack,
    required this.userType,
    required this.location,
  });

  @override
  State<Matching> createState() => _MatchingState();
}

class _MatchingState extends State<Matching> {
  // 더미 데이터 리스트
  final List<MatchPerson> matchPeople = [
    MatchPerson(
      industry: 'IT',
      stack: 'Flutter',
      userType: 'Developer',
      location: 'Seoul',
      name: '김에보',
      imageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
    ),
    MatchPerson(
      industry: 'IT',
      stack: 'React',
      userType: 'Designer',
      location: 'Busan',
      name: '이디자인',
      imageUrl: 'https://randomuser.me/api/portraits/women/2.jpg',
    ),
    MatchPerson(
      industry: 'IT',
      stack: 'Flutter',
      userType: 'Developer',
      location: 'Seoul',
      name: '박코드',
      imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
    ),
    MatchPerson(
      industry: 'Finance',
      stack: 'Spring',
      userType: 'Developer',
      location: 'Seoul',
      name: '최금융',
      imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg',
    ),
    // 추가 더미 데이터
    MatchPerson(
      industry: '디자인',
      stack: 'Figma',
      userType: 'Designer',
      location: 'Busan',
      name: '박디자',
      imageUrl: 'https://randomuser.me/api/portraits/women/5.jpg',
    ),
    MatchPerson(
      industry: '마케팅',
      stack: 'SNS',
      userType: 'Marketer',
      location: 'Seoul',
      name: '이마케팅',
      imageUrl: 'https://randomuser.me/api/portraits/men/6.jpg',
    ),
    MatchPerson(
      industry: '교육',
      stack: 'Python',
      userType: 'Teacher',
      location: 'Daegu',
      name: '최선생',
      imageUrl: 'https://randomuser.me/api/portraits/women/7.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filtered = matchPeople.where((p) =>
      p.industry == widget.industry &&
      p.stack == widget.stack &&
      p.userType == widget.userType &&
      p.location == widget.location
    ).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 393,
                height: (filtered.length > 0)
                    ? (216 + filtered.length * 271 + 100)
                    : 852,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 29,
                      top: 111,
                      child: Text(
                        '매칭',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.24,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 29,
                      top: 155,
                      child: Text(
                        '선택하신 태그 기반으로 매칭한 추천 상대입니다.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.24,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    // 카드 반복 렌더링
                    for (int i = 0; i < filtered.length; i++) ...[
                      Positioned(
                        left: 41,
                        top: 216 + i * 271, // 카드 간격 조정
                        child: Container(
                          width: 312,
                          height: 185,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: const Color(0xFFFFAC1E),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 199,
                                top: 0,
                                child: Container(
                                  width: 113,
                                  height: 185,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF2F2F2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 8,
                                        top: 21,
                                        child: Text(
                                          filtered[i].name,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.24,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 53,
                                        top: 20,
                                        child: Container(
                                          width: 52,
                                          height: 18,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF2F2F2),
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1.50,
                                                color: const Color(0xFFFC7B03),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 59,
                                        top: 21,
                                        child: Text(
                                          filtered[i].userType,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // 카드 반복 내 프로필 아이콘 부분
                                      Positioned(
                                        left: 8,
                                        top: 54,
                                        child: SizedBox(
                                          width: 15,
                                          height: 15,
                                          child: SvgPicture.asset(
                                            'assets/images/label.svg',
                                            width: 12,
                                            height: 12,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 76,
                                        child: Text(
                                          '분야 : ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 37,
                                        top: 76,
                                        child: Text(
                                          filtered[i].industry,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 108,
                                        child: Text(
                                          '기술 스택 : ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 57,
                                        top: 108,
                                        child: Text(
                                          filtered[i].stack,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 8,
                                        top: 140,
                                        child: Text(
                                          '지역 : ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 37,
                                        top: 140,
                                        child: Text(
                                          filtered[i].location,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontFamily: 'Pretendard',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 51,
                                top: 223 + i * 271,
                                child: Container(
                                  width: 175,
                                  height: 175,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(filtered[i].imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 카드 아래 버튼 2개
                      Positioned(
                        left: 163,
                        top: 426 + i * 271,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Endmatch(),
                              ),
                            );
                          },
                          child: Container(
                            width: 85,
                            height: 33,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFFC7B03),
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
                                  left: 20,
                                  top: 7,
                                  child: Text(
                                    '매칭하기',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      height: 1.50,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 268,
                        top: 426 + i * 271,
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
                                left: 13,
                                top: 7,
                                child: Text(
                                  '프로필 보기',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    // 하단 네비게이션 바 등은 그대로 유지
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
