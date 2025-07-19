import 'package:evolink/screen/Matching/matchselect.dart';
import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/Matching/endmatch.dart';

class Profilematch extends StatefulWidget {
  final String name;
  final String stack;
  final String? portfolioUrl;
  const Profilematch({super.key, required this.name, required this.stack, this.portfolioUrl});

  @override
  State<Profilematch> createState() => _ProfilematchState();
}

class _ProfilematchState extends State<Profilematch> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 55,
                top: 124,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 191,
                top: 125,
                child: SizedBox(
                  width: 52,
                  height: 24,
                  child: Text(
                    widget.name,
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
              ),
              Positioned(
                left: 258,
                top: 124,
                child: Container(
                  width: 55,
                  height: 25,
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
                left: 263,
                top: 129,
                child: SizedBox(
                  width: 45,
                  height: 16,
                  child: Text(
                    '프리랜서',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 269,
                child: Text(
                  '분야',
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
              Positioned(
                left: 31,
                top: 320,
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
                left: 43,
                top: 333,
                child: Text(
                  widget.stack,
                  style: TextStyle(
                    decoration: TextDecoration.none,
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
                top: 394,
                child: Text(
                  '기술 태그',
                  style: TextStyle(
                    decoration: TextDecoration.none,
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
                top: 443,
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
                left: 42,
                top: 452,
                child: Text(
                  '#',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: const Color(0xFFB3B3B3),
                    fontSize: 17,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 457,
                child: Text(
                  '기술 스택을 입력해주세요',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: const Color(0xFFB3B3B3),
                    fontSize: 10,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
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
              Positioned(
                left: 155,
                top: 697,
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
                        top: 4,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Endmatch(),
                              ),
                            );
                          },
                          child: Text(
                            '매칭하기',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
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
              Positioned(
                left: 191,
                top: 166,
                child: Text(
                  '저는 사실 임베디드과이긴한데\n앱개발을 하고있어요 \n저는 이런거 진짜 노잼이에요 \n그만하고 싶고토하고싶어요',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              // 포트폴리오 링크 (있을 때만)
              if (widget.portfolioUrl != null && widget.portfolioUrl!.isNotEmpty)
                Positioned(
                  left: 31,
                  top: 400,
                  child: Row(
                    children: [
                      Icon(Icons.link, color: Color(0xFFFC7B03), size: 18),
                      const SizedBox(width: 6),
                      TextButton(
                        onPressed: () {
                          // 실제 앱에서는 url_launcher 등으로 링크 열기 구현 가능
                        },
                        child: Text(
                          widget.portfolioUrl!,
                          style: TextStyle(
                            color: Color(0xFFFC7B03),
                            fontSize: 13,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
