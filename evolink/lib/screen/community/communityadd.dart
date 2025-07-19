import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:evolink/screen/community/community.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Communityadd extends StatefulWidget {
  const Communityadd({super.key});

  @override
  State<Communityadd> createState() => _CommunityaddState();
}

class _CommunityaddState extends State<Communityadd> {
  final tagController = TextEditingController();
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  XFile? _selectedImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  void _submit() {
    final newPost = CommunityPost(
      tag: tagController.text,
      content: '${titleController.text}\n${contentController.text}',
      authorName: '김에보',
      imagePath: _selectedImage?.path,
    );
    Navigator.pop(context, newPost);
  }

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
                  // 태그 입력란
                  Positioned(
                    left: 30,
                    top: 70,
                    child: Container(
                      width: 333,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: SvgPicture.asset(
                              'assets/images/label.svg',
                              width: 18,
                              height: 18,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              controller: tagController,
                              decoration: InputDecoration(
                                hintText: '태그를 입력하세요 (예: #프론트엔드 #디자인)',
                                hintStyle: TextStyle(
                                  color: const Color(0xFFCCCCCC),
                                  fontSize: 13,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  left: 2,
                                  top: -10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 150,
                    child: Container(
                      width: 333,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                        ),
                      ),
                      child: TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          hintText: '제목을 입력하세요',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCCCCCC),
                            fontSize: 13,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10, top: -8),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 220,
                    child: Container(
                      width: 333,
                      height: 200,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F2F2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xFFFC7B03),
                          ),
                        ),
                      ),
                      child: _selectedImage != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.file(
                                File(_selectedImage!.path),
                                width: 333,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/add_photo_alternate.svg',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                    color: const Color(0xFFCCCCCC),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '이미지를 추가하세요',
                                    style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 14,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 440,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        width: 333,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFC7B03),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '이미지 업로드',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
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
                      child: TextField(
                        controller: contentController,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          hintText: '프로젝트에 관한 글을 작성해주세요',
                          hintStyle: TextStyle(
                            color: const Color(0xFFCCCCCC),
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 720,
                    child: GestureDetector(
                      onTap: _submit,
                      child: Container(
                        width: 333,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFC7B03),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '업로드',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
    );
  }
} 