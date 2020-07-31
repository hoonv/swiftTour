# XCode UnitTest 하는법

![XCode%20UnitTest%20%E1%84%92%E1%85%A1%E1%84%82%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A5%E1%86%B8%200ac52134b560484fa4c6bed4371158c4/_2020-07-30__6.54.53.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/921627a8-f979-476d-a783-c7cb6824f2ca/_2020-07-30__6.54.53.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200731T123055Z&X-Amz-Expires=86400&X-Amz-Signature=ada0b6f5f268a887eaa4b5b100233279748f1eaa592629c3a21f133d781eae1c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22_2020-07-30__6.54.53.png%22)

프로젝트 info? 누르고 Targets 밑에 +버튼을 누른다

![XCode%20UnitTest%20%E1%84%92%E1%85%A1%E1%84%82%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A5%E1%86%B8%200ac52134b560484fa4c6bed4371158c4/_2020-07-30__6.56.51.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/eb3ad0e2-2efd-41a8-86ca-0777e76b2177/_2020-07-30__6.56.51.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200731T123154Z&X-Amz-Expires=86400&X-Amz-Signature=6502a1bad46255054605618ad8939b99c212669fe2d6714e8b91c880c5d4d205&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22_2020-07-30__6.56.51.png%22)

좀 내리면 유닛테스트 번들을 생성하면 된다. 

코드를 작성하고 테스트 하려 하면 자꾸 모듈을 못가져오는데 이떄는

다시 project info 눌러서 Target에 테스트 누르고 Build Phases에 Complie Source에 파일을 추가하면 된다.

![XCode%20UnitTest%20%E1%84%92%E1%85%A1%E1%84%82%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A5%E1%86%B8%200ac52134b560484fa4c6bed4371158c4/_2020-07-30__6.57.51.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9eec9f7d-9c92-4cae-b52b-618f370eed31/_2020-07-30__6.57.51.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200731T123227Z&X-Amz-Expires=86400&X-Amz-Signature=26c4ee8aec098dd9f486abe2837270dcbe0cf9799f7fb36ee5736c8644e06ffe&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22_2020-07-30__6.57.51.png%22)

![XCode%20UnitTest%20%E1%84%92%E1%85%A1%E1%84%82%E1%85%B3%E1%86%AB%E1%84%87%E1%85%A5%E1%86%B8%200ac52134b560484fa4c6bed4371158c4/_2020-07-30__7.15.31.png](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/156f907b-380b-4ed7-826d-0c3ddc781a6b/_2020-07-30__7.15.31.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20200731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20200731T123241Z&X-Amz-Expires=86400&X-Amz-Signature=cc93486516e55f545da1388b2ecc32f2dc4dc7fe0773a931020adc97b9e4356a&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22_2020-07-30__7.15.31.png%22)

테스트하고 싶을 땐  밑에꺼로 변경 하고 command U