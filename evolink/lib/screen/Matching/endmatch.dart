import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Endmatch extends StatefulWidget {
  const Endmatch({super.key});

  @override
  State<Endmatch> createState() => _EndmatchState();
}

class _EndmatchState extends State<Endmatch> {
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
                                        builder: (context) => Mainmatch(),
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
                left: 145,
                top: 341,
                child: Container(
                  width: 100,
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/images/check_circle.svg',
                    width: 22,
                    height: 22,
                    color: const Color(0xFFFC7B03),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 56,
                top: 461,
                child: Text(
                  '매칭이 완료되었습니다! 좋은 프로젝트 기대하겠습니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.24,
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
