# Ruby Language Study
### 교재
* [Programming Ruby 1.9 & 2.0 (4th edition)](https://pragprog.com/book/ruby4/programming-ruby-1-9-2-0)
* [루비로 배우는 객체지향 디자인](http://www.insightbook.co.kr/post/8327)

## Day 1: Basic Ruby Grammar 1
### 루비의 네이밍 관례
* 지역변수, 메서드 파라미터, 메서드 이름은 소문자나 '_'로 시작
* 전역변수는 $로 시작
* 객체의 멤버변수는 @으로 시작
* 클래스변수는 @@로 시작
* 클래스, 모듈, 상수는 대문자로 시작
* 여러단어로 이루어진 멤버변수는 '_'로 구분
* 여러단어로 이루어진 클래스는 MixedCase(CamelCase) 사용
* 메서드 이름은 '?', '!', '='로 해도된다!

### Arrays and Hashes
* 둘다 index 기반 collections
* Array는 integer를 key로, 반면 Hash는 어떤 object라도 key로 허용
* 여러 타입을 한꺼번에 담을 수 있다
* Array는 array literal(예: [1, 'cat', '3.14])로 생성 가능
* 'nil'도 객체다: nothing의 의미를 담은 객체
* 단어들을 array에 집어넣을 때 편하게 쓸 수 있는 방법 '%w'
	* 예시: a = %w{ ant bee cat dog elk}
	* 결과: ['ant', 'bee', 'cat', 'dog', 'elk']

* Hash는 {}를 쓰고 반드시 키와 값을 => 앞뒤에 넣어줘야 함
* 당연히 Hash의 키는 중복허용 안함
	* 중복하면 뒤에 나온 값으로 overwrite
* 대괄호 안에 인덱스를 넣어서 값을 확인
* 값이 없으면 nil 반환
* nil 대신 초기값을 넣으려면 Hash.new(초기값)으로 hash 생성하면 됨
	* histogram = Hash.new(0)

### Symbols
* 다른 언어의 enum과 같은 역할, 하지만 미리 선언하지 않고, 값도 할당하지 않고 그냥 씀
* ':'으로만 시작하면 됨 
	* 예 :north, :eash, :west, :south
* 사용 위치에 대한 제약이 없음
* 주로 사용되는 건 Hash의 키
* Symbol을 통해서 hash의 syntax를 짧게 줄일 수 있음
	* :cello => 'string'과 cello: 'string'는 동일

### Control Structure
* Ruby도 다른 언어에서 제공하는 if, while등 있음
* 차이는 중괄호 없이 'end'로 control block의 body 구분
* 루비 내의 거의 모든 문장은 값을 반환하기 때문에 조건문 안에 문장을 넣을 수 있다.
	* while line = gets
	* 이렇게 하면 EOF(키보드로 Ctrl + D) 만날 때 nil을 반환 하여 빠져 나온다
* if나 while의 body의 문장이 하나일 경우의 shortcut 문법
	* puts "10 is bigger than 9" if 10 > 9
	* square *= square while square < 1000

## Day 2: Basic Ruby Grammar 2
### 정규표현식
* 다른 스크립트 언어처럼 Ruby도 정규식을 언어에서 기본으로 지원
* 양 / 문자 안에서 정규식 표현 가능
	* 예시 /Perl|Python/
* Ruby가 모든 것을 객체로 보듯 정규식도 객체이다
* 정규식 내에서 사용되는 캐릭터 그룹 표현
	* \d 는 숫자
	* \s 는 white space(space, tab, newline 등)
	* \w
* =~ 가 정규표현식에서 매칭되는 첫번째 포지션을 반환함

###  Block과 Iterator
* Ruby의 강력한 문법
* 메서드의 인자로 코드를 집어넣을 수 있다.
* 중괄호{ } 또는 do end로 코드의 Block을 정의
* 관례상 코드가 한줄이면 중괄호, 여러 줄이면 do end를 선호
* 메서드 안에서 yield를 코드 Block이 실행 됨
* yield에 매개변수를 ()안에 넣을 수 있음, 이 매개변수는 Block 안에서 | | 로 선언하여 받음
* Block은 iterator를 통해서 사용되기도 함
	* 예시 animals.each { |animal| puts animal }

### 입출력
* 대표적인 출력 메서드 puts은 newline이 들어감 print는 안 들어감, p는 nil일 경우 찍어줌
* printf는 C의 printf와 유사한 방식
* 입력은 gets가 한라인을 읽어옴, EOF일경우 nil 반환

### CLI 매개변수
* 커맨드라인에서 실행 시 두가지 방식으로 받을 수 있음
	* ARGV 변수
	* ARGF (매개변수가 읽어야 할 파일일 경우)

## Day 3: Class & Object
### Java에서 Ruby로
* 기본적인 OO 개념은 Java와 다를 바가 없음

### 객체 생성
* Costructor는 intialize() 메서드로 매개변수로 객체 생성 가능
* Day1에서 한대로 멤버 변수(instance variable)는 @로 시작 한다~
* Java의 to_string 메서드 처름 to_s를 구현해 줘야 puts (객체) 요청시 정상적으로 내부 스테이트 값을 보여줌
* to_s 안 할거면 puts 대신 p 메서드 사용 하면 됨

### Instance Variable
* 멤버변수 접근을 위한 getter 메서드 작성 가능: accessor
* getter는 자주 작성하는 코드라 간단히 다음과 같은 shortcut 문법 제공
	* attr_reader :isbn, :price
* 내부 상태가 메서드로 오픈 되었을 때 attribute라고 표현
* attr_reader를 선언한다고 해서 자동으로 멤버변수를 생성하는 것은 아님!!
* setter 메서드는 독특하게 메서드 명 뒤에 "="를 붙임 
	* = 붙이는 것은 의무는 아니지만 가독성 측면에서 좋아보임
	* 예시: book1.price = book1price * 1.25
* setter역시 shortcut 제공
	* attr_writer :price
* getter / setter 다 하려면 "attr_accessor"로 작성

### Virtual Attribute
* 변수의 accessor로 단순히 wrapping하는 경우 말고 커스터마이징이 필요할 때 직접 setter/getter 메서드를 구현하면 됨
* 외부에서 볼 때는 객체의 attribute이지만 내부적으로는 기존의 attribute를 활용하여 setter/getter를 재정의한 것

### Attribute? or Instance Variable?
* 사실 둘 간의 차이를 따지는 건 소모적 논쟁
* 객체 내부에서만 관리되는 상태는 instance variale
* 메서드를 통해서 외부에 접근이 허락되는 것을 attribute로 보면 됨


### Class를 사용한 프로그램
* 외부 파일 클래스 사용시 'require (파일명)' 또는 'require_relative (파일명)'선언
	* 예시 require 'csv'

### Access Control
* 일반적인 OO 언어와 동일하게 public, protected, private 제공
* Access의 컨트롤은 동적으로 결정된다는 점
* method 구현 앞에 표시하거나, access 레벨에 따라 메서드의 이름을 적는 방식으로 표현


### Variables
* Ruby에서 assignment를 하면 객체의 reference만 변수가 보관한다.
* 변수를 다른 변수에 할당하면 객체의 레퍼런스만 공유하게 된다.
* 새롭게 다른 객체로 완전히 복사하려면 "dup"메서드 사용한다.
* Ruby에서는 Java와 달리 String이 수정가능 하다
* 더이상 수정 안하려면 freeze메서드를 호출한다.


## Day 4: Array / Hashes
###  Array 기본
* object reference의 collection
* Literal로  생성하거나 new 메서드로 생성하면 됨
* [] operator로 인덱싱 된다. []도 다른 루비 명령어처럼 실제는 메서드

### Array 인덱싱 활용
* [start, count] 시작 인덱스에서 카운트 개수만큼
* [start..finish] 시작 인덱스에서 마침 인덱스 까지
* [start...finish] 시작 인덱스에서 마침 인덱스 전까지

### Array 값 집어넣기 1
* a = [1,3,5,7,9]  ==> [1, 3, 5, 7, 9]
* a[1] = 'bat' ==> [1, "bat", 5, 7, 9]
* a[-3] = 'cat' ==> [1, "bat", "cat", 7, 9]
* a[3] = [ 9, 8 ] ==> [1, "bat", "cat", [9, 8], 9]
* a[6] = 99 ==> [1, "bat", "cat", [9, 8], 9, nil, 99]

### Array 값 집어넣기 2
* a = [ 1, 3, 5, 7, 9 ] ==> [ 1, 3, 5, 7, 9 ]
* a[2, 2] = 'cat' ==>  [1, 3, "cat", 9 ]
* a[2, 0] = 'dog' ==> [1, 3, "dog", "cat", 9 ]	
	* 길익 0일때는 시작포인트 앞에 삽입
* a[1, 1] = [9, 8, 7] ==>  [1, 9, 8, 7, "dog", "cat", 9 ]
* a[0..3] = [ ] ==> ["dog", "cat", 9 ]
* a[5..6] = 99, 98 ==> ["dog", "cat", 9, nil, nil, 99, 98 ]

### Array를 활용한 다양한 데이터 구조
* stack, set, queue, dequeue 등으로 그냥 바로 사용 가능
* push / pop 명령어를 쓰면 stack
* push / shift 명령어를 쓰면 queue


### Hash 기본
* associative array, map, dictionary로 부르기도 함
* 인덱싱된 객체 레퍼런스의 집합이라는 점에서 Array와 유사
* 하지만 Hash는 어떤 객체라도 인덱스로 정의할 수 있음
* 따라서 key라고 정의하는 인덱스와 value 값을 함께 넣음
	* 예시) h = { 'dog' => 'canine', 'cat'  => 'feline', 'donkey' => 'asinine' }
* 1.9 버전에서 Key 값을 Symbol로 받을 수 있음
	* h = { :dog => 'canine', :cat  => 'feline', :donkey => 'asinine' }
* 심볼을 키로 쓸 때 ":"을 뒤에 두고 "=>"도 생략 가능 (json스러운 문법)
	** h = { dog: 'canine', cat: 'feline', donkey: 'asinine' }
* 배열과의 가장 큰 차이는 인덱스로 어떤 객체를 사용해도 된다는 점
* 핵심은 Ruby에서는 아이템의 순서를 기억하고 있다는 점













