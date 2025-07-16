import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Communityadd extends StatefulWidget {
  const Communityadd({super.key});

  @override
  State<Communityadd> createState() => _CommunityaddState();
}

class _CommunityaddState extends State<Communityadd> {
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
                    top: 70,
                    child: Text(
                      '태그를 선택하여 글을 작성하세요',
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
                    left: 29,
                    top: 430,
                    child: Text(
                      '프로젝트에 관한 글을 작성해주세요',
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
                    left: 29,
                    top: 220,
                    child: Text(
                      '프로젝트에 관한 사진을 업로드 해주세요',
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
                    top: 128,
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
                    left: 65,
                    top: 130,
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
                    left: 170,
                    top: 130,
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
                    left: 275,
                    top: 130,
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
                    left: 31,
                    top: 180,
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
                    left: 29,
                    top: 490,
                    child: Container(
                      width: 335,
                      height: 201,
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
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 270,
                    child: Container(
                      width: 130,
                      height: 127,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFF8E8E8E),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 53,
                            top: 52,
                            child: GestureDetector(
                              child: SvgPicture.asset(
                                'assets/images/add_photo_alternate.svg',
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 154,
                    top: 720,
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
                            left: 26,
                            top: 7,
                            child: Text(
                              '업로드',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
