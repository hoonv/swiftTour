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

여기서 let이 어떻게 사용되었는지 주목하라. let where은 패턴과 결합하여 조건을 추가하는 역할이다.

Switch case와 패턴이 맞으면 그 문이 실행되고 나서 그 프로그램은 스위치 문을 탈출한다. c언어와 달리 다음 case를 실행하는 것이 아니라 바로 탈출한다 그러므로 break를 붙일 필요가 없다. 



너는 dictionary에서도 for in을 사용 할 수 있다 각각의 요소에 접근할 때는 key-value 쌍으로 접근 하면 된다. 딕셔너리는 순서가 없는 집합이므로 접근할때는 임의의 순서로 접근하게 된다.

```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"
```

> EXPERIMENT
>
> 어떤 종류의 원소가 가장 큰지 추적하기 위해 또 다른 변수를 추가해라.



코드블록을 반복 하기 위해서는 `while` 문을 사용하라 반복문이 적어도 한번 돌아가는 것을 확신 한다면 `repeat-while` 문을 사용하면 된다. 

```swift
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"
```



너는 `..<` 구문을 통해 index range를 만들 수 있다 파이썬 range(0,4) 0..<4 와 같은 의미이다.

```swift
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"
```

맨 끝 값을 포함 시키지 않으려면 `..<` 을 사용하고 맨 끝값도 포함시키고 싶다면  <을 빼고 `...` 을 사용하면 된다. 



## Functions and Closures

함수를 선언하기 위해서는 `func` 키워드를 사용하라.  함수의 이름을 적고 그것의 인수를 괄호 안에 넣어서 함수를 호출하라 `->` 을 이용하여 파라미터 이름과 함수의 리턴 타입을 구분하라.

```swift
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

```

> EXPERIMENT
>
> Day 파라미미터를 지우고 오늘의 점심 스페셜 파라미터를 추가해보자

기본적으로 함수를 호출 할때는 어떠한 값이 어떠한 파라미터인지를 알기 위해 앞에 파라미터의 이름을 적고 전달할 값을 적어줘야한다. 이것이 번거로운 상황이 있을 수도 있는데 이때는 `_` 을 통해 라벨을 생략 할 수도 있고 라벨 앞에 별명을 달아 줄 수도 있다. 

```swift
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
```



많은 값들을 리턴하고 싶다면 튜플을 사용하라 튜플의 요소는 이름이나 숫자로 접근 할 수 있다 

``` swift
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"
```



함수는 중첩 될 수 있다. 중첩된 함수는 그 밖에 함수에서 선언된 변수에 접근 할 수 있다. 너는 중첩 함수를 복잡하거나 긴 함수 안에 코드를 조작하기 위해 사용 할 수 있다.

``` swift
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
```

함수는 first-class type 인데 이것은 어떠한 함수의 반환값이 될 수도 있고 변수에 할당이 될 수도 있다는 의미이다. 

``` swift
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
```

함수는 또 다른 함수를 파라미터로 받을 수도 있다.

``` swift
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
```

함수는 사실 클로져의 특별한 경우이다. ~~(: blocks of code that can be called later.)?~~  클로져의 코드는 변수나 클로져가 생성 되었던 곳에서 접근가능한 함수 같은 것에 접근한다. 심지어 클로져가 실행될때 다른 스코프에 있어도 접근가능하다. 너는 이미 중첩된 함수를 보았다. 너는 클로져를 중괄호로 이름을 둘러 싸는 것없이 만들 수 있다. `in`을 알규먼트와 리턴타입을 바디와 구별하기 위해 사용하라.

``` swift
numbers.map({ (number: Int) -> Int in
            let result = 3 * number
            return result
})
```

> EXPERIMENT 
>
> 홀수에 대해서 0을 반환하도록 다시 작성해보자.

너는 클로져를 좀 더 간결히 작성하는데 몇가지 옵션이 있다. 클로져의 타입이 콜백함수와 같이 이미 알려져 있을때 너는 이것의 파라미터 타입이나 리턴타입 또는 둘 다 생략할 수 있다. 한 줄 클로져는 그것이 리턴이라는 것을 암시한다.

``` swift
let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)
```

너는 파라미터를 이름 대신 숫자로 접근할 수도 있다. 이 접근은 특히 매우 짧은 클로져에 대해 매우 유용하다. ~~함수의 마지막 인자로 전달된 클로져는 괄호 후에 즉시 드러난다?~~ 클로져가 어떠한 함수의 유일한 알규먼트일때 괄호는 생략될 수 있다. 

``` swift
let sortedNumbers = numbers.sorted( $0 > $1 )
print(sortedNumbers)
```



## Objects and Classes

class 이름 으로 클래스를 생성해라. 속성을 선언 하는 것은 상수나 변수를 선언하는 것과 똑같은 방법이다. 클래스의 문맥 안에 있다는 것만 빼면 함수나 메쏘드를 선언하는것 또한 마찬가지의 방법이다.

``` swift
class Shape {
  var numberOfSides = 0
  func simpleDescription() -> String {
    return "A shape with \(numberOfsides) sides."
  }
}
```

> EXPERIMENT
>
> let 키워드로 상수를 추가해라 그리고 그것을 취하는 메쏘드 또 추가해보아라

클래스 이름에 괄호를 추가해서 객체를 만들어보아라  클래스 안에 속성이나 메소드의 접근하기 위해야 `.` 문법을 사용하라.

``` swift
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
```

shape클래스는 중요한 것을 빼먹었다. 클래스는 객체로 생성될때 초기화를 해야하는데 이때 `init` 을 사용하라. 

``` swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

name이라는 속성과 name이라는 인자를 구별하기 위해 `self` 가 사용 된 것을 인지하라. 이니셜라이져의 인자들은 너가 객체를 만들때 함수를 부르는것 처럼 전달된다. 모든 속성들은 값이 할당 되어야한다. 선언할때 던지 아니면 이니셜라이져를 통해서든지 초기화가 되어야한다.

`deinit` 을 사용하라 디이니셜라이즈를 생성하기위해. 만약 객체가 할당 해제될 때 너가 몇가지 청소가 필요하다면 `deinit` 을 사용하라.

하위 클래스는 그들의 상위클래스의 이름을 그들의 이름 뒤에 콜론으로 구별하여 붙인다. 표준 루트 클래스의 하위 글래스는 어떠한 요구사항도 필요없다 그러니 너는 상위 클래스를 필요하다면 생략하거나 포함 할 수 있다. 

상위클래스트 메소드를 하위 클래스에서 다시 작성하는 경우엔 `override` 키워드를 붙인다. 만약 붙이지 않는다면 컴파일 에러가 발생할 것이다. 또한 컴파일러는 제대로 override하지 않는 경우도 잡아낸다. 

``` swift
class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
```

> EXPERIMENT
>
> circle이라는 또 다른 하위 클래스를 생성해라 이것은 이름과 반지름을 요구한다. 그리고 area() 와 simpleDescription()을 실행해라.

추가로 저장된 속성에 대해서 속성은 getter 와 setter를 가질 수 있다.

``` swift
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"
```

perimeter의 setter에서 새로운 값은 newvalue를 의미한다. 너는 명백한 이름을 set뒤에 괄호에 제공할 수 있다. 

EquilateralTriangle 클래스가 초기화 될때 다음과 같은 3가지 단계로 이뤄진다.

1. 서브클래스에서 선언된 속성값 초기화
2. 상위클래스의 초기화
3. 상위클래스에서 선언된 변수 변경 그리고 추가적인 methods, getter, setters등과 같은 작업 완료