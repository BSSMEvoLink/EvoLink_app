import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Matchchat extends StatefulWidget {
  const Matchchat({super.key});

  @override
  State<Matchchat> createState() => _MatchchatState();
}

class _MatchchatState extends State<Matchchat> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, String>> _messages = [
    {'from': 'other', 'text': '안녕하십니까 반갑습미당'},
    {'from': 'me', 'text': '안녕하십니까 반갑습미당'},
  ];

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({'from': 'me', 'text': text});
        _controller.clear();
      });
      // 다음 프레임에 스크롤 이동
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          '채팅',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
            letterSpacing: -0.24,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 393,
          height: 400,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final msg = _messages[index];
                    final isMe = msg['from'] == 'me';
                    return Row(
                      mainAxisAlignment:
                          isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                      children: [
                        if (!isMe)
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xFFD9D9D9),
                            child: Text('상', style: TextStyle(color: Colors.black)),
                          ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          constraints: BoxConstraints(maxWidth: 220),
                          decoration: BoxDecoration(
                            color: isMe ? Color(0xFFFFF3E0) : Colors.white,
                            border: Border.all(color: Color(0xFFFFAC1E)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            msg['text'] ?? '',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        if (isMe)
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xFFD9D9D9),
                            child: Text('나', style: TextStyle(color: Colors.black)),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color(0xFFFFAC1E)),
                  ),
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendMessage(),
                    decoration: InputDecoration(
                      hintText: '메시지를 입력하세요',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFFFFAC1E)),
                ),
                child: IconButton(
                  onPressed: () {
                    // 파일 업로드 기능 구현 예정
                  },
                  icon: SvgPicture.asset(
                    'assets/images/add_photo_alternate.svg',
                    width: 24,
                    height: 24,
                    color: Color(0xFFFFAC1E),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFFFAC1E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: _sendMessage,
                  icon: Icon(Icons.send, color: Colors.white, size: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
