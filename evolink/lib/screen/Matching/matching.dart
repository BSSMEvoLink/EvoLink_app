import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:evolink/screen/Matching/endmatch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/models/match_person.dart';
import 'package:evolink/screen/Matching/profilematch.dart';

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
  // 더미 데이터 리스트 (드롭다운 항목에 맞게, 10개)
  final List<MatchPerson> matchPeople = [
    MatchPerson(
      industry: '디자인',
      stack: '디자이너',
      userType: '프리랜서',
      location: '부산광역시',
      name: '이부산디자',
      imageUrl: 'https://randomuser.me/api/portraits/women/8.jpg',
      portfolioUrl: 'https://portfolio.com/lee',
    ),
    MatchPerson(
      industry: 'IT/소프트웨어',
      stack: '개발자',
      userType: '프리랜서',
      location: '서울특별시',
      name: '김서울개발',
      imageUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
      portfolioUrl: 'https://portfolio.com/kim',
    ),
    MatchPerson(
      industry: '마케팅/광고',
      stack: '마케터',
      userType: '기업',
      location: '경기도',
      name: '박경기마케팅',
      imageUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
    ),
    MatchPerson(
      industry: '교육',
      stack: '연구자',
      userType: '지자체',
      location: '대구광역시',
      name: '최대구연구',
      imageUrl: 'https://randomuser.me/api/portraits/women/3.jpg',
    ),
    MatchPerson(
      industry: '문화예술/콘텐츠',
      stack: '작가',
      userType: '프리랜서',
      location: '제주특별자치도',
      name: '이제주작가',
      imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg',
    ),
    MatchPerson(
      industry: '금융',
      stack: '기획자',
      userType: '기업',
      location: '서울특별시',
      name: '정서울기획',
      imageUrl: 'https://randomuser.me/api/portraits/men/5.jpg',
    ),
    MatchPerson(
      industry: '헬스케어/바이오',
      stack: '기타',
      userType: '프리랜서',
      location: '경상남도',
      name: '한경남헬스',
      imageUrl: 'https://randomuser.me/api/portraits/women/6.jpg',
    ),
    MatchPerson(
      industry: '유통/물류',
      stack: '영상/사진',
      userType: '기업',
      location: '인천광역시',
      name: '오인천영상',
      imageUrl: 'https://randomuser.me/api/portraits/men/7.jpg',
    ),
    MatchPerson(
      industry: '법률/노무/회계',
      stack: '기획자',
      userType: '기업',
      location: '세종특별자치시',
      name: '유세종법률',
      imageUrl: 'https://randomuser.me/api/portraits/men/9.jpg',
    ),
    MatchPerson(
      industry: '기타',
      stack: '기획자',
      userType: '프리랜서',
      location: '강원특별자치도',
      name: '강원기획',
      imageUrl: 'https://randomuser.me/api/portraits/women/10.jpg',
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profilematch(
                                  name: filtered[i].name,
                                  stack: filtered[i].stack,
                                  portfolioUrl: filtered[i].portfolioUrl,
                                ),
                              ),
                            );
                          },
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
