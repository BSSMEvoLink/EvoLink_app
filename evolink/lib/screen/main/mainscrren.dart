import 'package:evolink/screen/Matching/matchselect.dart';
import 'package:evolink/screen/community/community.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:io';
import 'package:evolink/screen/login/login.dart';
// CommunityPost와 communityPosts는 community.dart에서 import해서 사용

class Mainscrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // demoinging@gmail.com으로 로그인한 경우에만 본문 노출
    if (LoginSession.currentUserEmail != 'demoinging@gmail.com') {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(
            '이 계정으로만 접근 가능합니다',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            // 상단 로고/알림
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  width: 60, // 로고 더 크게
                  height: 60, // 로고 더 크게
                  child: Image.asset(
                    'assets/images/Evolinklogo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/images/notifications.svg',
                  width: 26, // 26으로 통일
                  height: 26, // 26으로 통일
                  color: const Color(0xFFFC7B03),
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                SvgPicture.asset(
                  'assets/images/lists.svg',
                  width: 26, // 26으로 통일
                  height: 26, // 26으로 통일
                  color: const Color(0xFFFC7B03),
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 10),
            // 인사말
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '안녕하세요 김에보님',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.24,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '오늘도 EvoLink와 함께 협업해보세요!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // 오늘의 알림
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 8),
              child: Text(
                '오늘의 알림',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.24,
                ),
              ),
            ),
            // (주)하링에서 포트폴리오에 관심을 눌렀습니다.
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 18),
              child: Container(
                width: 333,
                height: 60,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/notifications.svg',
                      width: 22,
                      height: 22,
                      color: Color(0xFFFC7B03),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        '(주)하링에서 포트폴리오에 관심을 눌렀습니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
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
            const SizedBox(height: 20),
            // "김에보님 이런 프로젝트는 어떠세요?"
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 8),
              child: Text(
                '김에보님 이런 프로젝트는 어떠세요?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.24,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // 커뮤니티 카드 리스트
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children:
                    communityPosts
                        .take(2)
                        .map(
                          (post) => Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFFFAC1E),
                                width: 1,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  post.tag,
                                  style: const TextStyle(
                                    color: Color(0xFFFC7B03),
                                    fontSize: 12,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  post.content,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[300],
                                      ),
                                      child:
                                          post.authorImagePath != null
                                              ? ClipOval(
                                                child: Image.file(
                                                  File(post.authorImagePath!),
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                              : Icon(
                                                Icons.person,
                                                size: 16,
                                                color: Colors.grey[600],
                                              ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      post.authorName,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${post.createdAt.month}/${post.createdAt.day}',
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),
            Spacer(),
            // 네브바 (SVG + 텍스트 + 페이지 이동)
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
      ),
    );
  }
}
