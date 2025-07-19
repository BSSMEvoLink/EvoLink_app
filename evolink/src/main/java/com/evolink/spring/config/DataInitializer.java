package com.evolink.spring.config;

import com.evolink.spring.model.CommunityPost;
import com.evolink.spring.model.MatchPerson;
import com.evolink.spring.repository.CommunityPostRepository;
import com.evolink.spring.repository.MatchPersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {
    
    @Autowired
    private CommunityPostRepository communityPostRepository;
    
    @Autowired
    private MatchPersonRepository matchPersonRepository;

    @Override
    public void run(String... args) throws Exception {
        // 커뮤니티 게시글 더미 데이터
        if (communityPostRepository.count() == 0) {
            communityPostRepository.save(new CommunityPost() {{
                setTag("#프론트엔드");
                setContent("React Native 개발자 모집합니다! 모바일 앱 프로젝트에 참여할 개발자를 찾고 있어요. 3년 이상의 경력과 TypeScript 경험이 있으시면 좋겠습니다.");
                setAuthorName("김개발");
            }});
            
            communityPostRepository.save(new CommunityPost() {{
                setTag("#백엔드");
                setContent("Spring Boot 백엔드 개발자 구합니다. REST API 개발 경험이 있으시고, AWS 배포 경험이 있으시면 더욱 환영합니다!");
                setAuthorName("박서버");
            }});
            
            communityPostRepository.save(new CommunityPost() {{
                setTag("#UI/UX");
                setContent("Figma 디자이너 모집! 사용자 경험을 중시하는 디자이너를 찾고 있어요. 포트폴리오 공유해주세요.");
                setAuthorName("이디자인");
            }});
            
            communityPostRepository.save(new CommunityPost() {{
                setTag("#풀스택");
                setContent("풀스택 개발자 급구! React + Node.js 프로젝트입니다. 빠른 개발이 가능하신 분 연락주세요.");
                setAuthorName("최풀스택");
            }});
            
            communityPostRepository.save(new CommunityPost() {{
                setTag("#AI/ML");
                setContent("머신러닝 엔지니어 모집합니다. Python, TensorFlow 경험이 있으시고, 컴퓨터 비전 프로젝트에 관심 있으시면 연락주세요.");
                setAuthorName("정AI");
            }});
            
            communityPostRepository.save(new CommunityPost() {{
                setTag("#모바일");
                setContent("Flutter 개발자 모집! 크로스 플랫폼 앱 개발 경험이 있으시고, Firebase 연동 경험이 있으시면 더욱 환영합니다.");
                setAuthorName("송모바일");
            }});
        }

        // 매칭 사용자 더미 데이터
        if (matchPersonRepository.count() == 0) {
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("디자인");
                setStack("디자이너");
                setUserType("프리랜서");
                setLocation("서울특별시");
                setName("홍길동");
                setImageUrl("https://placehold.co/175x175");
                setEmail("hong@example.com");
                setDescription("UI/UX 디자인 전문가입니다.");
            }});
            
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("IT/소프트웨어");
                setStack("개발자");
                setUserType("기업");
                setLocation("부산광역시");
                setName("이몽룡");
                setImageUrl("https://placehold.co/175x175");
                setEmail("lee@example.com");
                setDescription("백엔드 개발 전문가입니다.");
            }});
            
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("마케팅/광고");
                setStack("마케터");
                setUserType("지자체");
                setLocation("대구광역시");
                setName("성춘향");
                setImageUrl("https://placehold.co/175x175");
                setEmail("sung@example.com");
                setDescription("디지털 마케팅 전문가입니다.");
            }});
            
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("디자인");
                setStack("디자이너");
                setUserType("프리랜서");
                setLocation("부산광역시");
                setName("임꺽정");
                setImageUrl("https://placehold.co/175x175");
                setEmail("lim@example.com");
                setDescription("그래픽 디자인 전문가입니다.");
            }});
            
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("교육");
                setStack("기획자");
                setUserType("기업");
                setLocation("서울특별시");
                setName("최길동");
                setImageUrl("https://placehold.co/175x175");
                setEmail("choi@example.com");
                setDescription("교육 콘텐츠 기획 전문가입니다.");
            }});
            
            matchPersonRepository.save(new MatchPerson() {{
                setIndustry("제조/생산");
                setStack("연구자");
                setUserType("프리랜서");
                setLocation("경기도");
                setName("박영희");
                setImageUrl("https://placehold.co/175x175");
                setEmail("park@example.com");
                setDescription("제조 공정 연구 전문가입니다.");
            }});
        }
    }
} 