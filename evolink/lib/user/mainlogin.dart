import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/user/freelancer.dart';
import 'package:evolink/user/Corporation.dart';
import 'package:evolink/user/localgovernment.dart';

class Mainlogin extends StatefulWidget {
  const Mainlogin({super.key});

  @override
  State<Mainlogin> createState() => _MainloginState();
}

class _MainloginState extends State<Mainlogin> {
  int selectedType = -1; // 0 = 기업, 1 = 개인, 2 = 지자체

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),

      body: Stack(
        children: [
          Container(
            width: 393,
            height: 852,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                const Positioned(
                  left: 30,
                  top: 0,
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),
                const Positioned(
                  left: 42,
                  top: 211,
                  child: Text(
                    '회원가입 종류를 선택해주세요',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.50,
                    ),
                  ),
                ),

                // 텍스트들
                const Positioned(
                  left: 70,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '기업',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 185,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '개인',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 300,
                  top: 255,
                  child: SizedBox(
                    width: 40,
                    height: 18,
                    child: Text(
                      '지자체',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.50,
                      ),
                    ),
                  ),
                ),

                // 체크박스: 기업
                Positioned(
                  left: 40,
                  top: 255,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/check_circle.svg',
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color:
                          selectedType == 0
                              ? const Color(0xFFFC7B03)
                              : Colors.black,
                    ),
                  ),
                ),
                // 체크박스: 개인
                Positioned(
                  left: 155,
                  top: 255,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/check_circle.svg',
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color:
                          selectedType == 1
                              ? const Color(0xFFFC7B03)
                              : Colors.black,
                    ),
                  ),
                ),

                // 체크박스: 지자체
                Positioned(
                  left: 270,
                  top: 255,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedType = 2;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/images/check_circle.svg',
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                      color:
                          selectedType == 2
                              ? const Color(0xFFFC7B03)
                              : Colors.black,
                    ),
                  ),
                ),
                // 다음 버튼
                Positioned(
                  left: 33,
                  top: 600,
                  child: GestureDetector(
                    onTap: () {
                      if (selectedType == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CorporationJoin(),
                          ),
                        );
                      } else if (selectedType == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FreelancerJoin(),
                          ),
                        );
                      } else if (selectedType == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LocalgovernmentJoin(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('가입 유형을 선택해주세요')),
                        );
                      }
                    },
                    child: Container(
                      width: 328,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFAC1E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          '다음',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
