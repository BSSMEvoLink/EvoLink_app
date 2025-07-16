import 'package:evolink/screen/%20community/community.dart';
import 'package:evolink/screen/Matching/matching.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/Matching/mainmatch.dart';
import 'package:evolink/screen/main/mainscrren.dart';
import 'package:evolink/screen/mypage/mypage.dart';
import 'package:flutter/material.dart';

class Mainmatch extends StatefulWidget {
  const Mainmatch({super.key});

  @override
  State<Mainmatch> createState() => _MainmatchState();
}

class _MainmatchState extends State<Mainmatch> {
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
                    left: 29,
                    top: 10,
                    child: Text(
                      '매칭',
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
                    left: 29,
                    top: 62,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '원하는 태그를 선택해 EvoLink의 ',
                            style: TextStyle(
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
                    left: 30,
                    top: 120,
                    child: Text(
                      '프로젝트 분야',
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
                    //80
                    left: 30,
                    top: 240,
                    child: Text(
                      '원하는 기술 스택',
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
                    top: 278,
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
                    left: 328,
                    top: 288,
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        'assets/images/keyboard_arrow_down.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 43,
                    top: 291,
                    child: Text(
                      '디자이너',
                      style: TextStyle(
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
                    top: 358,
                    child: Text(
                      '원하는 협업자',
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
                    top: 476,
                    child: Text(
                      '원하는 매칭 지역 (선택)',
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
                  IndustryDropdownOverlay(),
                  StackDropdownOverlay(),
                  ProvinceDropdown(),
                  UserTypeDropdownPositioned(),

                  Positioned(
                    left: 156,
                    top: 670,
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
                            left: 31,
                            top: 7,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => Matching(), // ← 이동할 페이지
                                  ),
                                );
                              },
                              child: Text(
                                '매칭',
                                style: TextStyle(
                                  color: Colors.black,
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
                ],
              ),
            ),
          ),
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
                  side: BorderSide(width: 1.50, color: const Color(0xFFFC7B03)),
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
                                    builder: (context) => Mainmatch(),
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
    );
  }
}

class IndustryDropdownOverlay extends StatefulWidget {
  const IndustryDropdownOverlay({super.key});

  @override
  State<IndustryDropdownOverlay> createState() =>
      _IndustryDropdownOverlayState();
}

class _IndustryDropdownOverlayState extends State<IndustryDropdownOverlay> {
  String selectedIndustry = '디자인, 그래픽 디자인';
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  final List<String> industries = [
    '디자인',
    'IT/소프트웨어',
    '마케팅/광고',
    '교육',
    '제조/생산',
    '유통/물류',
    '헬스케어/바이오',
    '금융',
    '법률/노무/회계',
    '문화예술/콘텐츠',
    '기타',
  ];

  final GlobalKey _targetKey = GlobalKey();

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    final double top = 320;
    final double left = 30;

    return OverlayEntry(
      builder:
          (context) => Positioned(
            width: 333,
            left: left,
            top: top,
            child: Material(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFFC7B03)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      industries.map((industry) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndustry = industry;
                            });
                            _removeOverlay();
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            child: Text(
                              industry,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        key: _targetKey,
        margin: const EdgeInsets.only(left: 30, top: 158),
        width: 333,
        height: 43,
        decoration: ShapeDecoration(
          color: const Color(0xFFF2F2F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFFC7B03)),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 12,
              child: Text(
                selectedIndustry,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              right: 12,
              top: 9,
              child: GestureDetector(
                onTap: _toggleDropdown,
                child: SvgPicture.asset(
                  'assets/images/keyboard_arrow_down.svg',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StackDropdownOverlay extends StatefulWidget {
  const StackDropdownOverlay({super.key});

  @override
  State<StackDropdownOverlay> createState() => _StackDropdownOverlayState();
}

class _StackDropdownOverlayState extends State<StackDropdownOverlay> {
  String selectedItem = '디자이너';
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  final List<String> items = [
    '기획자',
    '개발자',
    '디자이너',
    '마케터',
    '영상/사진',
    '작가',
    '연구자',
    '기타',
  ];

  final GlobalKey _targetKey = GlobalKey();

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _removeOverlay();
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    final double top = 440; // 원하는 위치로 조정
    final double left = 30;

    return OverlayEntry(
      builder:
          (context) => Positioned(
            width: 333,
            left: left,
            top: top,
            child: Material(
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFFC7B03)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      items.map((item) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedItem = item;
                            });
                            _removeOverlay();
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            child: Text(
                              item,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        key: _targetKey,
        margin: const EdgeInsets.only(left: 30, top: 278),
        width: 333,
        height: 43,
        decoration: ShapeDecoration(
          color: const Color(0xFFF2F2F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFFC7B03)),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 12,
              top: 12,
              child: Text(
                selectedItem,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              right: 12,
              top: 9,
              child: GestureDetector(
                onTap: _toggleDropdown,
                child: SvgPicture.asset(
                  'assets/images/keyboard_arrow_down.svg',
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProvinceDropdown extends StatefulWidget {
  const ProvinceDropdown({super.key});

  @override
  State<ProvinceDropdown> createState() => _ProvinceDropdownState();
}

class _ProvinceDropdownState extends State<ProvinceDropdown> {
  String selectedProvince = '부산광역시';
  String searchKeyword = '';
  bool showSearch = false;

  final List<String> provinces = [
    '서울특별시',
    '부산광역시',
    '대구광역시',
    '인천광역시',
    '광주광역시',
    '대전광역시',
    '울산광역시',
    '세종특별자치시',
    '경기도',
    '강원특별자치도',
    '충청북도',
    '충청남도',
    '전라북도',
    '전라남도',
    '경상북도',
    '경상남도',
    '제주특별자치도',
  ];

  @override
  Widget build(BuildContext context) {
    List<String> filteredList =
        provinces.where((item) => item.contains(searchKeyword)).toList();

    return Stack(
      children: [
        // 박스 배경
        Positioned(
          left: 29,
          top: 516,
          child: Container(
            width: 333,
            height: 43,
            decoration: ShapeDecoration(
              color: const Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

        // 선택된 텍스트
        Positioned(
          left: 42,
          top: 529,
          child: Text(
            selectedProvince,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          ),
        ),

        // 화살표 아이콘
        Positioned(
          left: 327,
          top: 526,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showSearch = !showSearch;
                searchKeyword = '';
              });
            },
            child: SvgPicture.asset(
              'assets/images/keyboard_arrow_down.svg',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // 검색창
        if (showSearch)
          Positioned(
            left: 29,
            top: 570,
            child: Container(
              width: 333,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchKeyword = value;
                  });
                },
                style: const TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  hintText: '지역 검색',
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFB3B3B3),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xFFFC7B03)),
                  ),
                  isDense: true,
                ),
              ),
            ),
          ),

        // 검색 결과 항목 (검색어 있을 때만)
        if (showSearch && searchKeyword.isNotEmpty && filteredList.isNotEmpty)
          Positioned(
            left: 29,
            top: 620,
            child: Container(
              width: 333,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children:
                    filteredList.map((item) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedProvince = item;
                            searchKeyword = '';
                            showSearch = false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          child: Text(
                            item,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
      ],
    );
  }
}

class UserTypeDropdownPositioned extends StatefulWidget {
  const UserTypeDropdownPositioned({super.key});

  @override
  State<UserTypeDropdownPositioned> createState() =>
      _UserTypeDropdownPositionedState();
}

class _UserTypeDropdownPositionedState
    extends State<UserTypeDropdownPositioned> {
  String selectedUserType = '프리랜서';
  bool showDropdown = false;

  final List<String> userTypes = ['프리랜서', '기업', '지자체'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 회색 배경 박스
        Positioned(
          left: 30,
          top: 396,
          child: Container(
            width: 333,
            height: 43,
            decoration: ShapeDecoration(
              color: const Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

        // 선택된 텍스트
        Positioned(
          left: 43,
          top: 409,
          child: Text(
            selectedUserType,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              height: 1.50,
            ),
          ),
        ),

        // 화살표 아이콘
        Positioned(
          left: 328,
          top: 406,
          child: GestureDetector(
            onTap: () {
              setState(() {
                showDropdown = !showDropdown;
              });
            },
            child: SvgPicture.asset(
              'assets/images/keyboard_arrow_down.svg',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // 드롭다운 펼쳐짐
        if (showDropdown)
          Positioned(
            left: 30,
            top: 440,
            child: Container(
              width: 333,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFFC7B03)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    userTypes.map((type) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedUserType = type;
                            showDropdown = false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),
                          child: Text(
                            type,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
      ],
    );
  }
}
