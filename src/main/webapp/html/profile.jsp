<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <title>첫번째 포트 폴리오</title>
    <style>
        /* 1. 전체 초기화 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* 2. 다크 배경 및 기본 폰트 설정 */
        body {
            background-color: #12121c; /* 깊이감 있는 어두운 배경 */
            color: #e0e0e0; /* 너무 쨍하지 않은 편안한 흰색 텍스트 */
            font-family: 'Malgun Gothic', 'Apple SD Gothic Neo', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 60px 20px;
        }

        /* 3. 헤더 타이틀 */
        header {
            margin-bottom: 40px;
        }

        header h1 {
            font-size: 2.5rem;
            color: #ffffff;
            letter-spacing: 2px;
            /* 텍스트에 부드러운 네온 효과 */
            text-shadow: 0 0 10px rgba(68, 138, 255, 0.5); 
        }

        /* 4. 메인 레이아웃 통일 */
        main {
            display: flex;
            flex-direction: column;
            gap: 25px; /* 카드 사이 간격 */
            width: 100%;
            max-width: 600px;
        }

        /* 5. 카드 공통 스타일 (프로필, 스킬) */
        #profile-card, #skiils {
            background: #1e1e2d; /* 배경보다 살짝 밝은 카드 색상 */
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5); /* 입체감을 주는 그림자 */
            border: 1px solid #2a2a3d; /* 얇은 테두리로 카드 경계선 강조 */
            transition: transform 0.3s ease;
        }

        #profile-card:hover, #skiils:hover {
            transform: translateY(-5px); /* 마우스를 올리면 살짝 떠오름 */
        }

        /* 프로필 내부 가로 정렬 */
        #profile-card {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        /* 6. 프로필 이미지 영역 */
        .photo-area {
            width: 120px;
            height: 120px;
            /* 파란색~보라색 그라데이션으로 화려하게 */
            background: linear-gradient(135deg, #448aff, #7c4dff);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            font-size: 1.2rem;
            color: white;
            flex-shrink: 0;
            box-shadow: 0 5px 15px rgba(68, 138, 255, 0.4);
        }

        /* 7. 프로필 텍스트 및 버튼 */
        .info-area h2 {
            font-size: 1.8rem;
            color: #ffffff;
            margin-bottom: 5px;
        }

        .info-area p {
            color: #a0a0b0;
            margin-bottom: 15px;
        }

        button {
            background: #448aff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            font-size: 0.95rem;
            transition: background 0.3s, transform 0.1s;
        }

        button:hover {
            background: #2962ff;
        }

        button:active {
            transform: scale(0.95);
        }

        /* 메시지 출력 영역 최소 높이 확보 (글씨가 없을 때 레이아웃 틀어짐 방지) */
        #display-msg {
            margin-top: 15px;
            min-height: 24px; 
            color: transparent; /* JS가 실행되기 전에는 투명하게 */
            transition: color 0.3s;
        }

        /* 8. 스킬 섹션 */
        #skiils h3 {
            font-size: 1.4rem;
            color: #ffffff;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #33334d; /* 제목 아래 구분선 */
        }

        #skiils ul {
            list-style: none; /* 점 기호 제거 */
            display: flex;
            flex-wrap: wrap; /* 공간 부족 시 줄바꿈 */
            gap: 12px;
        }

        /* 스킬 태그 디자인 */
        #skiils li {
            background: #28293d;
            color: #448aff;
            padding: 8px 18px;
            border-radius: 25px; /* 둥근 캡슐 모양 */
            font-weight: bold;
            font-size: 0.9rem;
            border: 1px solid #3d3e5c;
        }

        /* 9. 푸터 */
        footer {
            margin-top: 50px;
            color: #555566;
            font-size: 0.9rem;
        }

        .photo-area img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* 이미지가 찌그러지지 않고 영역에 꽉 차게 됨 */
            border-radius: 50%; /* 이미지를 동그랗게 깎음 */
        }
    </style>
</head>

<body>
    <header>
        <h1>My Coding Journey</h1>
    </header>
    
    <main>
        <article id="profile-card">
            <div class='photo-area'>PHOTO</div>
            <div class='info-area'>
                <h2 id="profileName">김덕우</h2>
                <p>ゴゴゴゴゴゴゴ</p>
                <button id='msg-btn'>오늘의 한마디</button>
                <p id="display-msg"></p>
            </div>
        </article>
        
        <section id="skiils">
            <h3>My skill</h3>
            <ul>
                <li>HTML5 / CSS</li>
                <li>JavaScript</li>
                <li>JAVA / JSP / SPRING</li>
                <li>C# / Unity</li>
            </ul>
        </section>
    </main>
    
    <footer>
        <p>&copy; 2026 doekwoo develop portfolio</p>
    </footer>
    
    <script>
        // 1. HTML에서 동적으로 작업한 요소를 찾기
        const msgBtn = document.getElementById('msg-btn');
        const displayArea = document.getElementById('display-msg');
        const photoArea = document.querySelector('.photo-area');
        const profileName = document.getElementById('profileName');

        // 2. 찾은 요소에 적용할 내용을 작성
        const messages = [
            `나의 이름은 '키라 요시카게'. 33세.
            자택은 모리오초 북동부 별장지대에 있으며... 결혼은 하지 않았지.
            직업은 '카메유 체인점'의 회사원이며 늦어도 저녁 8시까지는 귀가하지.
            담배는 피우지 않지만 술은 즐기는 편.
            밤 11시에는 잠자리에 들고 반드시 8시간은 수면을 취하려 하지.`,
            `나선 계단! 장수풍뎅이! 폐허의 마을! 무화과 타르트! 장수풍뎅이! 돌로로사의 길!
            장수풍뎅이! 특이점! 지오토! 엔젤! 자양화! 장수풍뎅이! 특이점! 비밀의 황제!`,
            `레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로레로`,
            `WRYYYYYYYYYYYYY`
        ]

        // 3. 이벤트를 위한 처리
        msgBtn.addEventListener('click', () => {
            // 랜덤한 메시지 출력
            const randomIndex = Math.floor(Math.random() * messages.length);
            // 화면에 표시
            displayArea.innerText = messages[randomIndex];
            // 강조 효과를 위해 색상을 변경 (다크 테마에 맞는 밝은 파란색)
            displayArea.style.color = '#64b5f6'; 
            displayArea.style.fontWeight = 'bold';

            switch (randomIndex) {
                case 0:
                    photoArea.innerHTML = `<img src="./images/kira.jpg" alt="키라 요시카게">`;
                    profileName.innerText = 'KIRA YOSHIKAGE';
                    break;
                case 1:
                    photoArea.innerHTML = `<img src="./images/madeinheaven.png" alt="푸치 신부">`;
                    profileName.innerText = 'ENRICO PUCCI';
                    break;
                case 2:
                    photoArea.innerHTML = `<img src="./images/kakyoin.jpg" alt="카쿄인">`;
                    profileName.innerText = 'NORIAKI KAKYOIN';
                    break;
                case 3:
                    photoArea.innerHTML = `<img src="./images/dio.jpg" alt="디오">`;
                    profileName.innerText = 'DIO';
                    break;
                default:
                    photoArea.innerHTML = `PHOTO`;
                    break;
            }
        });
    </script>
</body>

</html>