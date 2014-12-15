# Ruby Language Study

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





