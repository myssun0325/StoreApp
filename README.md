# Step. 1
- 완성날짜: 2018년 8월 13일

<img src="images/step2_8.png" width="50%">

- Keyword
	- Custom TableViewCell class, JSONDecoder, Decodable, UIStackView

# Step. 2
- 완성날짜: 2018년 8월 14일

<img src="images/step2_8.png" width="50%"> 
<img src="images/step2_x.png" width="50%"> 
<img src="images/step2_plus.png" width="50%"> 

- Keyword
	- 서로 다른 화면 크기에 대응할 수 있는 오토레이아웃 적용하기

# Step. 3
- 완성날짜: 2018년 8월 16일

<img src="images/step3_demo.png" width="50%">

- Keyword
	- Custom Section Header, HeaderFooterView, Protocol inheritance, UITableView Delegate methods, UITableView DataSource methods, Enum CaseIterable Protocol

- 주요 작업사항
	- 기존 `JSONParser`객체를 `DataManager`객체로 바꾸면서 역할과 이름을 개선하였습니다.
	- 상위모듈에서 `StoreItemList`객체를 사용할 때 인터페이스를 단순화하였습니다.(init할 때 데이터 load, 실패가능한 이니셜라이저 활용)
	- 하나의 섹션에 대한 정보를 갖고 있는 StoreItemList가 StoreItem 배열뿐만 아니라 섹션에 대한 정보(title, description)를 갖습니다.
	- main, soup, side의 객체를 FoodCategory로 표현합니다.
	- 각 FoodCaterory의 정보를 배열로 갖고 있는 `SectionInfo` 상위 모델을 구현(섹션의 index접근을 위한 SectionInfo의 데이터 자료구조 선택: 배열)
	- 뷰컨트롤러가 셀이나 헤더뷰의 속성을 설정하기 위한 메서드에 인자로 모델전부를 넘겨주던 부분을 필요한 부분을 프로토콜로 넘겨주도록 개선하였습니다.
	- 테이블뷰 섹션의 Custom Header를 커스텀할 때 이전 단계에 사용하던 `BadgeLabel`을 재사용하였습니다.
	
# Step. 4
- 완성날짜: 2018년 8월 16일
- Toaster 적용

<img src="images/step4_demo.gif" width="50%">

- Keyword
	- CocoaPods, SwiftLint, Carthage, Homebrew
	- Xcode Project Terms : [참고1](https://stackoverflow.com/questions/20637435/xcode-what-is-a-target-and-scheme-in-plain-language/20637892#20637892), [참고2](https://www.edwith.org/boostcourse-ios/lecture/16841/)
	

# Step. 5
- 완성날짜: 2018년 8월 21일

<img src="images/step5_demo.gif" width="50%">


- Keyword
	- HTTP protocol, URLSession, asyn/sync, NotificationCenter Queue, DispatchQueue(GCD), Serial/Concurrent Queue, reload tableView's sections, reload tableView, 비동기 데이터 fetch + View의 업데이트 동기처리
	
# Step. 6
- 완성날짜: 2018년 8월 24일

<img src="images/step6_demo.gif" width="50%">

<img src="images/step6_error_demo.png" width="50%">

- Keyword
	- DispatchQueue.main, UI update, Concurrency Programming Guide, URLSession, URLSessionDownloadTask, FileManager, Caching, OperationQueue, 이미지 다운로드 시 GCD와 downloadTask의 차이
	
# Step. 7
- 완성날짜: 2018년 8월 29일

<img src="images/step7_demo.gif" width="50%">

- 주요작업사항
	- 상세화면을 나타내는 DetailViewController 구현
	- ViewController, DetailViewController, DetailView의 관계와 Delegate활용. 프로토콜(인터페이스)를 통한 값 전달
	- Alamofire를 이용한 데이터 요청 및 JSON데이터 다루기
	- UIScrollView의 ContentView인 DetailView 구현
	- UIScrollView의 페이징 구현
	- URLRequest와 URLSession을 이용한 HTTP POST요청보내기
	- UIStackView on ContentView on UIScrollView 다루기
- Keyword
	- 병렬로 날아오는 데이터의 동기처리, 전체화면 스크롤뷰, 스크롤뷰 ContentSize, Alamofire, 클로저(Wrapper)사용해보기(setDetailHash), UIScrollView의 페이징
	- "데이터는 어떻게 넘어올지 모른다."에 대응하기
	
# Step. 8

<img src="images/step8_demo1.png" width="50%">

<img src="images/step8_demo2.png" width="50%">