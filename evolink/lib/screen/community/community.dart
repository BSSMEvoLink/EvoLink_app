import 'package:evolink/screen/Matching/matchselect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/community/communityadd.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/Matching/matching.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'dart:io';

class CommunityPost {
  final String tag;
  final String content;
  final String? imagePath;
  final String authorName;
  final String? authorImagePath;
  final DateTime createdAt;

  CommunityPost({
    required this.tag,
    required this.content,
    this.imagePath,
    required this.authorName,
    this.authorImagePath,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}

// 커뮤니티 글 전역 리스트
List<CommunityPost> communityPosts = [
  CommunityPost(
    tag: '#디자인 #협업',
    content: '부산에서 디자인 프리랜서 구합니다! 포트폴리오 필수.',
    authorName: '이부산디자',
    createdAt: DateTime(2024, 7, 20),
  ),
  CommunityPost(
    tag: '#개발자 #프로젝트',
    content: '서울에서 앱 개발자(Flutter) 구인합니다. 장기 프로젝트.',
    authorName: '김서울개발',
    createdAt: DateTime(2024, 7, 19),
  ),
];

class Maincommunity extends StatefulWidget {
  const Maincommunity({Key? key}) : super(key: key);

  @override
  State<Maincommunity> createState() => _MaincommunityState();
}

class _MaincommunityState extends State<Maincommunity> {
  List<CommunityPost> filteredPosts = communityPosts;
  String searchQuery = '';

  void _filterPosts(String query) {
    setState(() {
      searchQuery = query;
      if (query.isEmpty) {
        filteredPosts = communityPosts;
      } else {
        filteredPosts =
            communityPosts
                .where(
                  (post) =>
                      post.content.toLowerCase().contains(
                        query.toLowerCase(),
                      ) ||
                      post.tag.toLowerCase().contains(query.toLowerCase()) ||
                      post.authorName.toLowerCase().contains(
                        query.toLowerCase(),
                      ),
                )
                .toList();
      }
    });
  }

  void _addPost(CommunityPost post) {
    setState(() {
      communityPosts.insert(0, post);
      filteredPosts = communityPosts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 393,
        height: 852,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
         child: Stack(
           children: [
             // 커뮤니티 텍스트
             Positioned(
               left: 30,
               top: 130,
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
             // 오른쪽에 SVG 아이콘
             Positioned(
               right: 30,
               top: 130,
               child: GestureDetector(
                 onTap: () async {
                   final result = await Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Communityadd()),
                   );
                   if (result is CommunityPost) {
                     _addPost(result);
                   }
                 },
                 child: SvgPicture.asset(
                   'assets/images/edit_document.svg',
                   width: 24,
                   height: 24,
                   fit: BoxFit.cover,
                   color: Colors.orange,
                 ),
               ),
             ),
             // 검색바
             Positioned(
               left: 30,
               top: 200,
               child: Container(
                 width: 333,
                 height: 40,
                 decoration: ShapeDecoration(
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(5),
                     side: const BorderSide(width: 1, color: Color(0xFFFC7B03)),
                   ),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 8, right: 8),
                       child: SvgPicture.asset(
                         'assets/images/frame_inspect.svg',
                         width: 18,
                         height: 18,
                         fit: BoxFit.cover,
                       ),
                     ),
                     Expanded(
                       child: TextField(
                         onChanged: _filterPosts,
                         decoration: const InputDecoration(
                           hintText: '검색어를 입력하세요',
                           hintStyle: TextStyle(
                             color: Color(0xFFCCCCCC),
                             fontSize: 13,
                             fontFamily: 'Pretendard',
                             fontWeight: FontWeight.w500,
                           ),
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.only(left: 2, top: -10),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             // 게시글 목록
             Positioned(
               left: 30,
               top: 230,
               right: 30,
               bottom: 100,
               child:
                   filteredPosts.isEmpty
                       ? const Center(
                         child: Text(
                           '게시글이 없습니다.',
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 16,
                             fontFamily: 'Pretendard',
                           ),
                         ),
                       )
                       : ListView.builder(
                         itemCount: filteredPosts.length,
                         itemBuilder: (context, index) {
                           final post = filteredPosts[index];
                           return Container(
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
                                 if (post.imagePath != null)
                                   Container(
                                     margin: const EdgeInsets.only(bottom: 10),
                                     width: double.infinity,
                                     height: 180,
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(8),
                                       child: Image.file(
                                         File(post.imagePath!),
                                         fit: BoxFit.cover,
                                       ),
                                     ),
                                   ),
                                 // 태그
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
                                 // 내용
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
                                 // 작성자 정보
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
                           );
                         },
                       ),
             ),
             // 하단 네비게이션 바 (현재 상태 그대로 유지)
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
