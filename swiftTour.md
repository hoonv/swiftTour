# 스위프트 여행 

**이 문서는 [a swift tour](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html) 를 보고 정리한 글입니다.**

새로운 언어로 작성하는 첫번째 프로그램의 전통적인 제안들은 **Hello, world!** 를 출력 해보는 것이다.

스위프트에서는 이것을 한줄로 끝낼 수 있다. 

```swift
print("Hello, world!")
```

만약 너가 C언어나 Objective-C를 사용해봤다면 이 문법은 친근하게 보일 것이다. 스위프트에서는 이 라인은 완벽한 프로그램이다.  너는 인풋 아웃풋 스트링을 다루기 위해 분리된 라이브러리를 import 할 필요 없다. 글로벌 스코프에서 작성된 코드가 프로그램의 시작점으로 사용될 것이다. 그래서 너는 main 함수도 필요 없다. 또한 너는 또한 매 명령마다 세미콜론을 붙일 필요도 없다.



이 투어는 너가 스위프트 코드를 작성하는데 충분한 정보를 줄 것이다. 어떤것을 이해하지 못해도 걱정하지 마라 이 책의 나머지 부분에서 설명 되어질 것이다.

>NOTE
>
>최고의 경험을 위해서는 이 챕터를 Xcode 에서 실행해라 Playgrounds는 너가 이 코드를 수정하고 즉시 결과를 볼 수 있게 할 것이다.



## Simple Values

`let` 은 상수를 만들기 위해  `var` 은 변수를 만들기 위해 사용하라 상수변수는 컴파일 타임 때 알려질 필요가 없다. 그래서 너는 반드시 하나의 값을 할당 해야 한다. 이것은 너가 한번 선언하고 많은 곳에서 사용될 때에 상수 변수를 사용하면 된다는 것을 의미한다.

```swift
var myVariable = 42
myVariable = 50
let myConstant = 42
```

상수나 변수는 반드시 너가 할당하고 싶은 값과 같은 타입을 가져야한다.  그러나 너는 항상 타입을 명시해줄 필요는 없다. 너가 상수나 변수를 생성할 때 값을 제공하면 그러니깐 값을 할당한다면 컴파일러가 이것의 타입을 유추할 수 있다. 위의 예시를 보면 컴파일러는 `myVaraible` 를 정수형 타입으로 추론한다.



만약 초기값이 충분한 정보를 제공해주지 않거나 정수나 실수와 같은 또는 초기값이 없다면 구체적으로 타입을 변수 뒤에 적어주면 된다. 콜론으로 분리해서

``` swift
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
```

> EXPERIMENT
>
> 생성해봐라 Float형 타입 상수를 그리고 값은 4



변수는 절대 은연중에 타입이 바뀌지 않는다. 만약 너가 변수의 타입을 변환하고 싶다면 명시적으로 객체를 만들어야 한다.

``` swift
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
```

> EXPERIMENT
>
> 마지막줄의 String을 제거해봐라 어떤 에러가 발생했니



변수를 포함하는 스트링을 만들때 쉬운 방법이 있다 변수를 괄호안에 집어 넣고 그 괄호 앞에 백 슬레이쉬를 붙이면 된다.

``` swift
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
```

> EXPERIMENT
>
> \ () 을 float 계산도 해보고 다른사람의 이름도 포함 시켜 봐라



새개의 쌍 따음표 (""") 는 다중 라인을 표현하기 위해 사용한다. 

``` swift
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
```

배열과 사전을 생성하기 위해서는 brackets ( **[]** ) 를 사용한다 그들의 엘리먼트에 접근하기 위해서는 braket안에 index 나 key를 적어준다.

```swift
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
  "Malcolm": "Captain",
  "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"
```

배열은 너가 원소를 집어넣으면 자동적으로 사이즈가 늘어난다.

```swift
shoppingList.append("Blue paint")
print(shoppingList)
```

빈 배열이나 빈 사전을 생성하기 위해선 다음과 같은 문법으로 초기화 해라

```swift
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
```



만약 타입 정보가 추론된다면, 너는 빈 배열을 그냥 [] 표현할 수 있다. 사전은 [:]  예를 들면 변수에 새로운 값을 할당 하거나 함수에 값을 넘겨줄 때 사용한다.

```swift
shoppingList = []
occupations = [:]
```



## Control Flow

조건문을 만들 때는 `if` 나 `switch` 를 사용한다. 그리고 반복문을 만들때는 `for-in` ,  `while`  그리고 `repeat-while` 를 사용한다.

```swift
let individualScores = [75, 12, 32, 43, 65]
var tempScore = 0
for score in individualScores {
    if score > 50 {
        tempScore += 10
    } else {
        tempScore += 3
    }
}
```

`if` 문 안에서는 반드시 Boolean 표현문으로 표현되어야 한다.  --이것은 다음과 같은 코드는 에러가 발생한다는 의미이다. If score { ... }  즉 0에 대한 암묵적 비교가 아니다. 0이 아닌것은 다 참이 아니다. 



너는 `if` 와 `let` 을 같이 사용 할 수 있다. 값이 있는지 없는지 나타내기 위해,  이 변수는 optional 로 표현된다. optional value는 어떠한 값있거나 없는 `nil` 을 나타낸다.  `nil` 은 값이 없다(missing) 는 것을 의미한다. optional value를 만들고 싶으면 Question mark (?) 물음표를 타입 뒤에 사용하라 

``` swift
var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

> EXPERIMENT
>
> optaionalName을 nil로 변경해보아라. greeting은 어떤 값이 되겠는가?. 그리고 `else` 문을 추가해 보아라 

만약 optional value가 nil이라면 조건절은 false이다 그리고 중괄호는 스킵된다. (if문이 실행이 되지 않는다.) 반대로는 nil이 아니라면 그 값이 upwrap되고 let 으로 할당한 상수변수에 할당된다. 이 것은 그 블록 안에서 그 값을 사용할 수 있게 되는 것이다.

> ADDITION
>
> optional은 typecasting이나 nil value체크 등을 할때 중요하다. 안전하게 optional이라 wrapper 로 감싸놓는다고 생각하면 된다. optional안에는 무엇이 존재 해도 괜찮다. 문제가 생긴다면  이것을 열어볼때 문제가 생기는 것이다. 위에서 사용한 `if let` 문법은 `optional binding`이라고도 불린다. 즉 optional 을 벗기고 그 안에 값을 가져올 때 nil 값인지 아닌지 체크하고 가져 오는 것이다. 



Optional value를 다루는 다른 방법은 ?? operator를 사용 하여 기본 값을 제공하는 것이다. 만약 optional value가 nil이라면 기본 값이 대신 하는것이다. 

```swift
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
```



스위치문은 어떤 종류의 데이터를 지원하고 넓고 다양한 비교구분을 실행한다. 스위치는 정수에 제한이 없고 동등한지 체크한다.

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"
```

> EXPERIMENT
>
> default 문을 제거 하면 무슨 에러가 발생 되는가?









