# Basic Operators

`operator` 는 너가 값을 검사하고 변경하고 합성하는데 사용하는 특별한 심볼이나 구문이다. 예를들면 **let i = 1 + 2** 와 같이 더하기 연산자 (+)는 두개의 값을 더한다. 논리적 AND 연산자 (&&)는  **if enteredDoorCode && passedRetinaScan**처럼 두개의 불리언 값들을 합친다

스위프트는 너가 C에서 이미 알고있는 연산자들을 제공한다. 그리고 일반적인 코딩 오류를 개선하기 위해 몇몇을 개선했다. 비교연산자 (==)를 사용하려 했지만 실수로 (=)연산자를 사용 했을 때의 원하지 않은 결과가 도출 될 수 있기 때문에, 할당 연산자 (=) 는 값을 반환하지 않는다. 그래서 if 문에서 사용할 수 없다. 또한 산술연산자 (+, - *, / 등등)는 타입의 값의 범위 보다 더 크거나 더 작은 값의 예상하지 못한 결과를 피하기 위해 값의 오버플로우를 감지하고 허락하지 않는다. 너는 스위프트의 `Overflow Operators` 를 사용하여 오버플로우가 되는 연산자를 선택 할 수도 있다.

스위프트는 또한 `a..<b` , `a...b` 와 같은 C에서는 없는 값의 범위를 표현하기 위한 범위 연산자들 도 있다. 

이 챕터에서는 기본적인 연산자들을 소개한다. [Advanced Operators](https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html) 에서 더 많은 연산자들과 너 자신만의 연산자들 만드는 법에 대해서 다룬다.



## Terminology

 연산자는 단항, 이항, 삼항 연산자가 있다.

- 단항 연산자는 하나의 타겟에 대해 작동한다 (-a 와 같이). 단항 접두사 연산자는 그들의 타겟 바로 앞에 위치된다. (!b)  단항 접미사 연산자는 그들의 타겟 바로 뒤에 위치된다. (c!) 

- 이항 연산자는 두개의 타겟 가운데에 위치한다 (2 + 3) 

- 삼항연산자는 C에서 와 마찬가지로 스위프트에서도 하나가 존재한다 (a ? b : c) 와 같이 사용한다. 

  `operators`가 영향을 끼치는 값을 `operand` 라고 한다. `1 + 2` 표현에서 `+`는 연산자이고 `1, 2`는 피연산자 이다. 

## Assignment Operator

할당 연산자는 (a = b)에서 b로 초기화하거나 업데이트한다. 

``` swift
let b = 10
var a = 5
a = b
```

만약 할당연산자의 오른쪽이 다양한 값으로 되어있는 튜플이라면, 이것의 요소들은 한번에 많은 상수나 변수로 분해 될 수 있다.

```swift
let (x, y) = (1, 2)
// x는 1이고 y 는 2이다
```

C나 Objective-C와 다르게 스위프트에서 할당연산자는 값을 반환하지 않는다 다음의 명령문은 유효하지 않다. 

```swift
if x = y {
  // 이 문은 유요하지 않다 왜냐하면 x = y 는 값을 반환하지 않기 떄문이다.
}
```

이러한 특징은 원래는 비교연산자 처럼 사용하려 했지만 실수로 할당 연산자를 사용했을 때의 실수를 막아준다.  `if x = y` 를 유효하지 않게 만드므로써 스위프트는 이러한 에러를 막게 도와준다.



## Arithmetic Operators

스위프트는 모든 숫자 타입에 대해서 기본적인 네가지의 산술 연산자를 지원한다.

- 덧셈 (+)
- 뺄셈 (-)
- 곱셈 (*)
- 나누기 (/)

``` swift
1 + 2 // 3
2 - 10 // -8
3 * 6 // 18
11 / 2 // 5
11 / 2.0 // 5.5
11.0 / 2 // 5.5
5 % 2 // 1
```

C와 Objective-C와는 달리 스위프트의 산술연산자는 기본적으로 값의 오버플로우를 막는다. 너는 선택적으로  `(a &+ b )` 와 같은 오버플로우 연산자를 사용해서 오버플로우를 할 수도 있다.

덧셈 연산자는 또한 문자열의 덧셈도 지원한다.

```swift
"hello, " + "world" // "hello, world"
```

#### Remainder Operator

나머지 연산자 `( a % b )` 는 a를 b로 나누었을때에 나머지를 반환하는 연산자이다. 

> NOTE
>
> 나머지 연산자는 또한 모듈러 연산자라고 다른 언어에서 알려져 있는데 스위프트에서는 음수에 대한 행동을 보면 나머지 연산자라고 하는것이 맞다. 

다음은 `9 % 4` 를 계산하는 방법을 보여준다. 

![../_images/remainderInteger_2x.png](https://docs.swift.org/swift-book/_images/remainderInteger_2x.png)

너는 두개의 4로 9를 채우면 1이 남는데 이때의 나머지는 1이다.

```  swift
9 % 4 // 1
```

a % b의 결과 값을 정하기 위해 내부에서 다음과 같은 방정식을 계산하고 remainder의 값을 계산한다. 

a = (b * some multiplier) + remainder

멀티플러는 b와 곱하여서  a를 채울 수 있는 가장 큰 숫자이다.

9 = (4 * 2) + 1 

a가 음수일 때도 나머지 연산자는 작동한다.

```swift  
-9 % 4 // -1
```

-9 = (4 * -2) + -1 이다.

만약 b가 음수라면 이때의 음수는 무시된다 즉 9 % -4 나 9 % 4 의 값은 같다.

#### Unary Minus Operator

(-) 접두사를 이용해 숫자 값의 부호를 바꿀 수있다. 

```swift
let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"
```

단항 마이너스 연산자 (-)는 중간에 띄어쓰기 없이 바로 숫자 앞에 와야한다.

#### Unary Plus Operator

단항 플러스 연산자는 어떠한 값의 변경도 없이 그 값 그대로 리턴한다.

```swift
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
```

비록 플러스 연산자는 실제로 아무것도 행동하진 않지만 너는 단항 마이너스 연산자가 음수를 표현하려 사용될때 단항 플러스 연산자를  문법적으로 사용 할 수는 있다. 



## Compound Assignment Operators

C와 같이 스위프트도 할당 연산자와 결합하여 복합 할당 연산자를 제공한다 한 예는 덧셈할당연산자이다.

```swift
var a = 1
a += 2
// a is now 3
```

a += 2는 a = a + 2보다 더 짧게 쓸수있다. 덧셈과 할당을 하나의 연산자로 묶음으로써 수행과 생산성을 둘다 잡았다.

> NOTE
>
> 복합연산자는 값을 리턴하지 않으므로 다음과 같은 식은 사용할 수 없다 let b = a += 2



## Comparison Operators

스위프트는 다음과 같은 비교연산자를 지원한다.

- 같다 ( == )
- 다르다 ( != )
- 크다 ( > )
- 작다 ( < )
- 크거나 같다 ( >= )
- 작거나 같다 ( <= )

> NOTE 
>
> 스위프트는 두가지의 식별 연산자를 지원한다 (=== , !==) 이것은 두개의 객체가 가르키는것이 같은 객체를 가르키는것인지 테스트할 때 사용한다.

각각의 비교 연산자는 이 명령이 참인지 거짓인지 지시하기위해 Bool 값을 반환한다 

```swift
1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 is not equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 is not less than or equal to 1
```

비교연산자는 if 문과 같은 조건문에서 사용된다. 

```swift
let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}
// Prints "hello, world", because name is indeed equal to "world".
```

너는 튜플이 같은 타입을 갖는다면 튜플간에 도 비교연산자를 사용할 수 있다. 튜플은 왼쪽부터 오른쪽으로 값을 하나씩 두개의 값이 다를때까지 비교한다. 두개의 값을 비교했을때 그 비교의 결과가 전체 결과를 결정한다. 만약 모든 요소가 같다면 그러면 튜플들은 같은 튜플이다.

```swift
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
```

위의 예시에서 너는 왼쪽에서 오른쪽으로 비교하는 것을 볼 수 있다. 1이 2보다 작기 때문에 (1, 'zebra')는 (2, 'apple')보다 작다. 다른 부분은 고려될 필요가 없다. "zebra"가 "apple"보다 작은것은 고려하지 않는다. 왜냐하면 첫번째 요소에서 비교가 끝났기 떄문이다. 그러나 첫번째 요소가 같다면 그들의 두번째 요소가 비교 대상이 되고 그것도 같다면 세번째 요소가 비교대상이된다.

튜플은 각각의 요소가 비교가능할때 튜플도 비교가 가능하다. 예를 들어 아래 코드를 보면 너는 < 연산자에 대해  (String, Int)를 비교할 수 있다. 왜냐하면 String, Int 둘다 비교가 가능하기 때문이다. 반대로 (String, Bool) 튜플은 < 연산자에 대해 비교할 수 없다. 왜냐하면 Bool 타입은 크거나 작은 연산자에 대해선 적용 할 수 없기 때문에 Bool이 포함된 튜플또한 < 연산자에 대해 적용 불가능하다.

```swift
("blue", -1) < ("purple", 1)        // OK, evaluates to true
("blue", false) < ("purple", true)  // Error because < can't compare Boolean values
```

> NOTE
>
> 스위프트 기본 라이브러이엔 7개의 원소보다 작은 튜플은 기본적으로 비교가 가능하다 그러나 그것 이상이라면 너가 직접 함수를 구현해야한다.

## Ternary Conditional Operator

## Nil-Coalescing Operator

## Range Operators

## Logical Operators



