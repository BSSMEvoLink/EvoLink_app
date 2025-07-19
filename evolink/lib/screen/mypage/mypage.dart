import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/Matching/matchselect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/login/login.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  XFile? _profileImage;

  Future<void> _pickProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _profileImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                                            builder:
                                                (context) => Maincommunity(),
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
                                            builder: (context) => Matchselect(),
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
                  Positioned(
                    left: 35,
                    top: 107,
                    child: GestureDetector(
                      onTap: _pickProfileImage,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: OvalBorder(),
                        ),
                        child: ClipOval(
                          child:
                              _profileImage != null
                                  ? Image.file(
                                    File(_profileImage!.path),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  )
                                  : Center(
                                    child: SvgPicture.asset(
                                      'assets/images/add_photo_alternate.svg',
                                      width: 40,
                                      height: 40,
                                      color: Color(0xFFB3B3B3),
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 170,
                    top: 140,
                    child: Text(
                      '이수연',
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
                    left: 230,
                    top: 140,
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
                    left: 235,
                    top: 144,
                    child: Text(
                      '프리랜서',
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
                    top: 240,
                    child: Text(
                      '분야를 입력해주세요',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  // 분야 입력란
                  Positioned(
                    left: 30,
                    top: 280,
                    child: Container(
                      width: 333,
                      height: 50,
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
                      child: TextField(
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: '분야를 입력해주세요',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCCCCCC),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            top: 10,
                            bottom: 8,
                          ), // hint 위치 조절
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 380,
                    child: Container(
                      width: 333,
                      height: 50,
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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12, right: 8),
                            child: Text(
                              '#',
                              style: TextStyle(
                                color: const Color(0xFFB3B3B3),
                                fontSize: 20,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: 16),
                              decoration: InputDecoration(
                                hintText: '기술 태그를 입력해주세요',
                                hintStyle: TextStyle(
                                  color: const Color(0xFFCCCCCC),
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  left: 0,
                                  top: 8,
                                  bottom: 8,
                                ), // hint 위치 조절
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 169,
                    top: 700,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        '로그아웃',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFFF0606),
                          fontSize: 13,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 480,
                    child: Container(
                      width: 333,
                      height: 50,
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
                      child: TextField(
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: '자기소개를 입력해주세요',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCCCCCC),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            top: 10,
                            bottom: 8,
                          ), // hint 위치 조절
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 560,
                    child: Text(
                      '포트폴리오 링크를 첨부해주세요',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                  // 포트폴리오 링크 입력란
                  Positioned(
                    left: 29,
                    top: 605,
                    child: Container(
                      width: 333,
                      height: 50,
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
                      child: TextField(
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: '포트폴리오 링크를 첨부해주세요',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCCCCCC),
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            top: 10,
                            bottom: 8,
                          ), // hint 위치 조절
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
