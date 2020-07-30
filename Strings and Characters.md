# Strings and Characters

"Hello, world" 또는 "albatross"등과 같은 문자열은 캐릭터의 연속이다 스위프트 문자열은 String타입으로 표현된다. Character값의 collection으로 접근하는 것을 포함하여 String의 내용을 접근하는데는 여러가지 방법이 있다.

스위프트의 String과 Character 타입은 빠르고 유니코드한 방법으로 제공된다. 문자 생성의 문법은 C와 비슷하여 가볍고 읽기 쉽다. 문자열 붙이기는 +연산자를 통해 간단하게 더해진다. 그리고 문자열의 가변성은 다른 변수들 처럼 상수나 변수로 선언하는 것에 의해서 정해진다. 너는 문자열에 상수나 변수나 string interpolation을 통해서  긴 표현을 삽입 할 수 있다. 

이러한 간단함에도 불구하고, 스위프트의 String은 빠르고 현대적이다. 모든 문자열은 encoding-independent Unicode character로 구성되어 있고 다양한 유니코드에 접근하기 위해 접근 보조도구를 제공한다. 

> NOTE
>
> 스위프트의 String은 Foundations의 NSString과 연결 되어있다. 또한 Foundation은 String을 확장해서 NSString으로 정의된 method를 제공한다. 만약 너가 Foundation을 import한다면 너는 캐스팅 없이 NSString을 사용할 수 있다.



## String Literals

너는 문자열을 통해 미리 정의된 String 값을 생성 할 수 있다 문자열은 쌍따옴표 (") 로 둘러 싸서 만들 수 있다. 문자열을 상수나 변수의 초기 값으로 사용하라.

``` swift
let someString = "Some String literal value"
```

스위프트는 초기 값이 문자열 값이라 someString의 타입을 String이라고 추론한다.



#### Multiline String Literals

다중 라인 문자열을 표현 하기 위해선 쌍따옴표 3개를 (""")를 사용한다. 

```swift
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
```

다중 라인 문자열의 시작은 """가 있는 첫번째 줄부터 시작이다 처음에 개행이 있더라도 """가 있는 줄은 무시된다 

```swift
let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""
```



만약 긴 문자열을 작성할 때 보기 좋게 하기 위해서 개행을 한다면 ( \ )을 이용해라 그러면 실제로는 개행이 된 문자열이 아니라 이어지는 문자열이 될 것이다. 

```swift
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
```

처음과 마지막에 개행을 주고 싶다면 빈 줄을 만들면 된다.

```swift
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
```

다중라인 문자열은 Indentation을 인식한다. 

```swift
let lineWithIndentation = """
    hello, world!
        hello, swift
"""
print(lineWithIndentation)
```

#### Special Characters in String Literals

In [computer science](https://en.wikipedia.org/wiki/Computer_science), a **literal** is a notation for representing a fixed [value](https://en.wikipedia.org/wiki/Value_(computer_science)) in [source code](https://en.wikipedia.org/wiki/Source_code).

먼저 리터럴이의 뜻을 알아보았다 리터럴이란 컴퓨터과학에서 특정한 값을 표기하는 표기법이라고 한다..

스트링 리터럴은 그냥 문자열이라고 생각하자.. 

문자열은 다음과 같은 특수 문자를 포함한다

- escaped special characters \0 널 \\ 백슬래쉬 \t 탭 \n 개행  \\" \\' 등등
- 임의의 유니코드 등등

밑에 코드는 4가지의 특별한 문자에 대해 보여준다. wiseWords는 쌍따옴표가 있고 dollarSign blackHeart sparklingHeart는 유니코드 포맷을 갖고 있다.

```swift
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

```

다중라인 문자열은 세개의 쌍따옴표를 사용하는데 다음과 같이 쌍따옴표 하나를 쓰고 여러개를 붙여서 쓸 수 있다. 

```swift
let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

```



#### Extended String Delimiters

확장된 문자 구분자

문자열을 확장된 구분자 안에 배치하여 이러한  \t \n 특수 문자를 그들이 영향을 끼치지 않고 출력 할 수 있게 도와준다 너는 "" 문자열 밖에 #으로 감싸주면 된다. #""# 이러한 형태이다 그렇다면 그 안에 특수문자들은 발동을 안할 것이다 예를 들어 #"안녕하세요 \n 반갑습니다 "#는 개행없이 한줄에 출력이 될 것이다.



만약에 이러한 문자열 안에서도 너가 특수문자가 영향을 끼치게 하려고 한다면 #을 다시 붙여저는 방식으로 그렇게 할 수 있다. 예를 들면 #"안녕하세요 \\#n 반갑습니다 "# 로 개행을 할 수 있다.

확장된 구분자를 통해 생성된 문자열은 다중라인 문자열에서도 적영된다 너는 멀티라인에서 """을 사용 할 수 있다. 

```swift
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
```

