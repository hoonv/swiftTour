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

