# The Basics

스위프트는 iOS, macOS, watchOS, and tvOS 앱 개발을 위한 새로운 언어이다. 새로운 언어임에도 불구하고 스위프트의 많은 부분이 C와 Objective-C와 많이 비슷하다.

스위프트는 기본적인 C와 Objective-C의 타입들을 자체적으로 제공한다 정수를 위한 `Int`, 실수형 변수를 위한 `Float`, Boolean 변수를 위한 `Bool` 그리고  텍스트 데이터를 위한 `String` 타입을 지원한다. 또한 스위프트는 세가지의 강력한 `collection type` 을 지원한다. `Array` `Set` `Dictionary` 가 있다.

C언어와 같이 스위프트는 저장과 접근하기위해 이름으로 구별된 변수를 사용한다. 또한 스위프트는 값을 변경할 수 없는 변수도 광범위하게 사용한다. 이러한 변수를 상수라고 하는데 이것은 C의 상수보다 더욱더 강력하다. 상수는 코드를 더 깔끔하고 안전하게 만들기 위해 스위프트에서 광범위하게 사용된다. 

더 나아가서, 스위프트는 Objective-C에 없는 튜플과 같은 향상된 타입을 제공한다. 튜플을 사용하면 값들을 묶고 전달 할 수 있다. 함수에서 여러값들을 리턴해야 할때에 튜플을 사용 할 수 있다.  

스위프트는 또한 optional type이 존재한다. 이것은 값이 존재하는지 안하는지 다룬 옵셔널은 말한다 거기에는 값이 있고 이것은 x와 같다 또는 거기에는 어떠한 값도 없다. 옵셔널을 사용하는 것은 Objective-C에서 nil을 사용하는것과 비슷하다. 그러나 그들은 클래스뿐 아니라 어떤 타입에서든지 작동한다.  옵셔널은 objective-C의 nil보다 더 안전할 뿐 아니라 더 표현적이다 . 옵셔널은 많은 스위프트의 특징의 핵심이다.

스위프트는 `type-safe` 언어이다. 이것은 변수의 타입을 명확히 하여 너의 코드를 잘 작동하게 한다. 만약 너의 어떠한 코드가 String을 요구한다면 `type safety`는 실수로 Int가 들어오지 않게 막는다. 마찬가지로 Optional 타입이 들어오지 않게 막아준다. `tpye safty`는 너가 개발 단계에소 최대한 빨리 에러를 잡고 고쳐주도록 도와준다.



## Constants and Variables

상수와 변수는 그의 이름과 연관이 있다 (예를 들면 maximumNumberOfLoginAttemps 나 welcomeMessage) 는 특정한 타입이 필요할 것이다. (예를들면 숫자 10 그리고 문자 "Hello") 상수는 한번 설정되면 변경이 불가능하다 반대로 변수는 변경이 가능하다.

#### Declaring Constants and Variables

상수와 변수는 반드시 그들이 사용되기전에 선언되어야 한다. 상수는 선언할 때 `let` 을 사용하고 변수는 `var` 을 사용한다. 여기에 유저가 만든 로그인 시도를 추적하기 위해 어떻게 상수와 변수가 사용되는지 예시가 있다 

```swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```

이 코드는 다음과 같이 읽힌다:

"maximumNumberOfLoginAttempts라고 불리는 상수를 선언하고 그리고 10의 값을 할당하라. 그리고 currentLoginAttempt 변수를 선언하고 0으로 초기화 하라"

이 예제에서 로그인 시도의 최댓 값은 상수로 선언되었다 왜냐하면 최댓값은 절대 바뀌지 않을 것이기 때문이다. 현재 로그인 시도한 횟수는 변수로 선언되었다 왜냐하면 이 숫자는 매 시도마다 증가할 것이기 때문이다.

너는 다수의 상수나 다수의 변수를 컴마로 나누어서 한줄에 선언 할 수 있다.

``` swift
var x = 0.0, y = 0.0, z = 0.0
```

> NOTE
>
> 만약 너의 코드에서 저장된 값이 바귀지 않을 것이라면 항상 let이라는 키워드로 상수로 선언하라 변수는 오직 바뀔 수 있는 값에만 사용하라.



#### Type Annotations

너는 변수나 상수에 저장될 수 있는 값을 명확히 하기 위해 변수나 상수를 선언할 때 타입 주석을 제공할 수 있다. 타입 주석은 변수나 상수의 이름 뒤 세미콜론뒤 띄어쓰기뒤 위치시킨다. 

```swift
var welcomeMessage: String
```

선언문에서 콜론은 `...of type...` 으로 해석된다 그러므로 위의 선언은 이렇게 읽힐 수 있다. 선언해라 한 변수를 welcomeMessage라 불리는 어떤것이냐면 String type인.

`of type String` 의 의미는 String 값은 어떤 것이든 저장 가능하다라는 의미이다. 

그 welcomMessage 변수는 에러 없이 어떠한 스트링 값으로도 할당 될 수 있다. 

``` swift
welcomeMessage = "Hello"
```

너는 여러개의 연관된 변수들을 콤마로 구분하여 한줄에 선언 할 수 있다. 타입 주석은 마지막에 위치한다.

``` swift
var red, green, blue: Double
```

> NOTE
>
> 실제로 타입 주석을 쓰는 경우는 드믈다. 만약 너가 상수나 변수에 초기값을 제공한다면 그 순간에 정해진다. 스위프트는 항상 변수나 상수의 타입을 추론한다. 위의 welcomeMessage예시에선 초기값이 제공되지 않았다. 그래서 타입을 추론하는것이 아니라 타입 주석이 명시되었다. 

#### Naming Constants and Variables

상수와 변수의 이름은 거의 모든 글자나 캐릭터가 가능하다. 

```swift
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
```

상수와 변수는 whitespace(스페이스), 수학기호, 화살표,private-use Unicode scalar values, or line- and box-drawing 은 불가능하다. 또한 숫자로 시작할 수도 없다. 그러나 처음만 아니면 숫자는 포함 가능하다.

만약 너가 한번 상수나 특정타입의 변수를 선언하였으면 그 이름은 다시 선언될 수 없다. 또한 다른 타입으로 다시 선언 될 수도 없다. 또한 변수에서 상수로 상수에서 변수로 바꿀수도 없다. 

> NOTE
>
> 만약 스위프트에 예약된 키워드를 변수나 상수의 이름으로 사용하고 싶다면 그 예약어를 백틱(`)으로 감싸면 된다. 하지만 선택의 여지가 없는 상황이 아니라면 피해라. 

``` swift
var `break` = 10
```

너는 변수에 대해서는 그 안에 값을 바꿀 수 있다.

```swift
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!"
```

변수와 달리 상수는 한번 값을 정하면 다시는 바꿀 수 없다. 만약 바꾸려 시도한다면 에러가 발생 할 것이다.

```swift
let languageName = "Swift"
languageName = "Swift++"
// This is a compile-time error: languageName cannot be changed.
```



## Comments

## Semicolons

## Integers

인티져는 분수가 아닌 모든 숫자이다. 예를들면 42 또는 -23과 같다. 정수는 signed(양수, 0, 음수) 나 unsigned(0, 양수)이다

스위프트는 signed and unsigned 정수를 8, 16, 32, 64비트의 형태로 제공한다. 이 정수들은 C와 비슷한 네이밍 규칙을 따른다. 8-bit unsigned 정수는 UInt8로 표현하고 32-bit signed는 Int32로 표현한다.  스위프트의 모든 타입은 대문자로 시작한다.

#### Integer Bounds

너는 각각의 정수 타입에 min, max속성 값을 통해 최솟값과 최댓값을 접근 할 수 있다. 

``` swift
let minValue = UInt8.min  // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max  // maxValue is equal to 255, and is of type UInt8
```

이러한 속성의 값들은 적당한 사이즈의 숫자 타입이다 그리고 그러므로 다른 사이즈지만 같은 타입이면 같이 사용 가능하다.. ?

#### Int

대부분의 경우에서 너는 특정한 사이즈의 정수를 사용할 필요는 없다. 스위프트는 추가적인 정수 타입을 제공한다.  int는 현재 플랫폼의 word사이즈와 동핟. 

- 32비트 플랫폼에선 Int사이즈는 Int32 와 같다.
- 64비트 플랫폼에선 Int사이즈는 Int64 와 같다.

특별한 사이즈의 정수가 필요하지 않는 한 항상 Int를 정수형 타입으로 사용하라. 이것은 상호운용성과 일관성을 돕는다. 32비트 플랫폼에서 Int는 -2,147,483,648` and `2,147,483,647 범위의 값을 가질 수 있다. 이것은 충분히 큰 숫자 범위이다.



#### UInt

스위프트는 또한 언사인드 정수 타입을 지원한다. 이것도 플랫폼의 word사이즈와 같은 사이즈를 같는다.

- 32비트 플랫폼에선 Int사이즈는 Int32 와 같다.
- 64비트 플랫폼에선 Int사이즈는 Int64 와 같다.

> NOTE
>
> UInt는 플랫폼의 네이티브 워드 사이즈와 같은 사이즈가 필요한 특별한 상황에서만 사용하라. 그렇지 않다면 양수만 저장한다 하더라도 인트가 선호된다. 일관적인 Int의 사용이 상호운용성을 도와주고 다른 숫자 타입으로의 전환을 피하라



#### Floating-Point Numbers

*floating-point numbers*는 분수를 포함한 숫자들이다. 예를 들면 3.14159, 0,1 그리고 -273.15 등과 같다. 

실수는 정수형 타입보다 더 넓은 범위의 수를 표현한다 그리고 더 크고 더 작은 숫자를 저장한다. 스위프트는 두가지의 실수형 변수를 제공한다. 

- Double은 64비트 실수형 숫자를 표현한다.
- Float는 32비트 실수형 숫자를 표현한다.

> NOTE
>
> Double은 적어도 15자리의 숫자에 대해 정확성을 보인다. 반면에 Float는 6자리의 숫자에 대해 정확성을 가진다. 적절한 실수형 타입을 사용하는 것은 너의 코드에서 필요한 값의 범위에 달려있다. 대부분 Double로 하는 것이 선호된다.



## Type Safety and Type Inference

스위프트는 `type-safe` 언어이다. 이것은 변수의 타입을 명확히 하여 너의 코드를 잘 작동하게 한다. 만약 너의 어떠한 코드가 String을 요구한다면 `type safety`는 실수로 Int가 들어오지 않게 막는다. 

스위프트는 타입을 보호하기 때문에 스위프트는 너의 코드를 컴파일 할때 타입 체크를 수행한다. 그리고 어떠한 미스매치가 있다면 에러로 이를 알린다. 이것은 너가 에러를 잘 캐치하고 최대한 빨리 고칠 수 있게 도와준다. 

타입체킹은 너가 다른 타입들을 다룰 때 에러를 피하도록 도와준다. 그러나, 이것은 너가 항상 상수나 변수를 선언할 때 타입을 명시해야 한다는 것을 의미하지 않는다.만약 너가 타입을 명시하지 않는다면 스위프트는 적절한 타입을 추론한다. Type inference은 컴파일러가 너가 제공한 값을 검사하여 자동적으로 타입을 추론 한다.

Type inference덕분에 스위프트는 C나 Objective-C보다 더 타입 선언이 적다. 상수랑 변수는 여전히 명확한 타입이지만 타입을 특정하는 더 많은 일은 너를 위해 일한다.

Type inference은 특히 너가 상수와 변수를 초기값과 선언할 때 더욱 유용하다. 이것은 너가 상수나 변수를 선언할 때 초기값을 주는 것만으로도 끝난다.

예를들어, 만약 너가 초기값으로 42를 타입명시 없이 새로운 상수에 할당한다면 스위프트는 너가 정수를 원한다고 추론한다 왜냐하며 너가 정수로 초기화를 했기 때문이다. 

```swift
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int
```

이와같이 실수형 타입도 명시할 필요없다. 스위프트는 너가 Double을 원한다고 추론한다.

```swift
let pi = 3.14159
// pi is inferred to be of type Double
```

스위프트는 실수형 숫자를 추론할 때 항상 Float보다 Double을 선호한다.  

만약 너가 정수와 실수를 혼합한다면 그 타입은 Double이 될 것이다.

```swift
let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double
```

3자체는 타입이 명확하지 않다. 그래서 Double타입의 추론은 뒤에 0.14를 통해 이루어졌다.

## Numeric Literals

정수 문자? (Integer literals)는 다음과 같이 쓰여질 수 있따.

- 10진수는 어떠한 접두사도 없다
- 2진수는 0b라는 접두사가 붙는다.
- 8진수는 0o라는 접두사가 붙는다.
- 16진수는 0x라는 접두사가 붙는다.

다음은 다양한 진법으로 17을 표현한 예시이다.

```swift
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
```

실수형 문자도 10진수는 어떠한 접두사도 붙지 않고 16진수는 0x가 붙는다. 그들은 반드시 숫자가 포함 되어있어야 한다. 10진수 실수는 대문자나 소문자의 e를 지수로 가질 수 있으며 16진수의 경우에는 p를 지수로 가질 수 있다.

십진수의 경우에는 다음과 같이 표현 할 수 있다.

- 1.25e2 는 1.25 * 10^2 이나 125.0을 나타낸다
- 1.25e-2 는 1.25 * 10^-2이나 0.0125를 나타낸다

16진수의 경우에는 

- 0xFp2 는 15 * 2^2 나 60.0을 나타낸다
- 0xFp-2는 15 * 2^-2 나 3.75를 나타낸다

다음은 모두 12.1875를 나타내는 숫자들이다.

```swift
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
```

문자정수는 더 쉽게 읽기 위해서 추가적인 포맷팅을 지원한다.  정수와 실수 모두 앞에 여분의 0을 덧댈 수 있다. 그리고 가독성을 위해 언더스코어(_)를 추가할 수 있다.



## Numeric Type Conversion

상수나 변수의 일반적인 목적으로 Int를 사용하라 심지어 음수가 아닌 숫자를 저장 할 지라도. 모든 상황에서 기본적인 정수 타입을 사용하는 것은 너의 코드에서 정수형 상수나 변수가 즉시 호환가능하다는 것이다 그리고 추론된 타입과 일치하단 것이다.?

다른 정수형 타입을 사용하는 것은 특별 한 경우에만 사용하라 명확한 사이즈가 있거나 성능향상 메모리 사용 다른 필수적인 최적화인 경우에만 사용하라. 이러한 상황에서 명확한 타입을 사용하는 것은 값 오버플로우나 암묵적으로 문서화 하는 것을 도와준다.



#### Integer Conversion

정수형 상수나 변수에 저장될 수 있는 값의 범위는 타입마다 다르다. int8타입의 경우 -128~127 까지 이고 UInt8 타입의 경우에는 0~255까지이다. 이러한 타입에 맞지 않는 값들은 컴파일 타임때 에러를 발생할 것이다. 

```swift
let cannotBeNegative: UInt8 = -1
// UInt8는 음수를 저장할 수 없다. 이는 에러가 발생한다.
let tooBig: Int8 = Int8.max + 1
// Int8은 최대값보다 큰 숫자를 저장할 수 없다 이는 에러가 발생한다
```

각각의 숫자 타입이 다른 범위의 값을 저장 할 수 있기 때문에 너는 반드시 사례로 맞는 타입을 선택 해야한다. 적절한 선택은 암묵적인 변환 에러를 막아준다 그리고 타입 전환 의도가 명백히 함을 도와준다.

특정한 숫자 타입을 다른 타입으로 바꾸기 위해서 너는 기존의 존재하는 값을 원하는 타입의 새로운 숫자로 초기화를 해야한다. 아래 예시를 보면 UInt16 타입의 twoTousand 와 UInt8 타입의 one이 있다. 그들은 타입이 다르기 때문에 직접 바로 더 할 수는 없다. 대신에 이 예제는 UInt8의 타입을 UInt16타입으로 타입을 바꿔 줌으로써 이를 가능하게 한다. 

```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
```

덧셈의 양쪽이 모두 UInt16이므로 덧셈이 허용된다. twoThousandAndOne의 타입은 UInt16으로 추론 된다. 왜냐하면 Uint16의 두 값을 더했기 때문에.

초기값은 이니셜라이저를 부르는 기본적인 방법이다. 신뒤에서 UInt16은 UInt8를 받아들이는 이니셜라이져가 존재한다 그래서 이니셜라이져는 UInt8로부터 UInt16을 만드는데 사용된다. 이니셜라이져가 제공하는 존재하는 타입을 확장하여 새로운 타입을 만들 수 도 있다 이것은 나중에 Extension에서 알아보자.



#### Integer and Floating-Point Conversion

정수와 실수의 변환은 명확하게 이루어져야 한다.

```swift
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double
```

여기에 상수 3이 Double형 타입으로 새로 생성되었다. 그래서 더하기 양쪽이 모두 같은 타입이 되었다. 만약 이 변환이 없다면 덧셈은 허용되지 않을 것이다.

실수에서 정수로 변환 하는것도 명확히 이루어져야 한다. 정수형 타입은 Double이나 Float값으로도 초기화 될 수있다. 

```swift
let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int
```

실수형 값이 정수형 값으로 바뀔 때는 항상 소수점 부분은 버려진다. 이것은 4.75가 4가 되고 -3.9가 -3이 된다는 의미이다.

>NOTE
>
>he rules for combining numeric constants and variables are different from the rules for numeric literals. The literal value `3` can be added directly to the literal value `0.14159`, because number literals don’t have an explicit type in and of themselves. Their type is inferred only at the point that they’re evaluated by the compiler.



## Type Aliases

타입 별명은 기존의 존재하는 타입에 대해서 대채적인 이름을 정의한다. 너는 `typealias` 라는 키워드로 타입에 대해 별명을 지정 할 수 있다.

타입별명은 너가 기존의 존재하는 타입에 대해서 이렇게 불러야 할때 맥락적으로 자연스러울 때 사용하면 유용하다. 예를들면 외부의 소스로부터 특정한 사이즈의 데이터를 다룰 떄 사용하면 유용하다.

```swift
typealias AudioSample = UInt16
```

한번 타입 별명을 설정하면 너는 어디서든지 사용 할 수 있다.

```swift
var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0
```

여기에 AudioSample은 UInt16의 타입의 별명으로 지정 되었다 별명 덕분에 `AudioSample.min` 은 실제로 `UInt16.min` 를 나타낸다. 

## Booleans

## Tuples

## Optionals

너는 만약 값이 존재하지 않을 수 있다면 optional을 사용하라. 옵셔널은 두가지의 가능성을 표현한다. 한가지는 거기에는 값이 있고 너는 그 값에 접근하기 위해 unwrap할 수 있다 와 거기에는 어떠한 값도 없다라는 것을 나타낸다. 

> NOTE
>
> 옵셔널의 개념은 기존의 C나 Objective-C에서는 존재하지 않는다. Objective-C에서 가장 가까운 것은 객체 대신에 nil을 리턴할 수 있는 능력이다. nil의 의미는 유요한 객체의 부재이다. 그러나 이것은 오직 object에서만 동작한다. 이것은 구조체나 기본적인 C의 타입이나 enum값에서는 동작하지 않는다. 이러한 타입에 대해서는 Objective-C 메소드는 전형적으로 특별한 값을 리턴한다 (NSNotFound) 라는 값을 리턴한다. 값의 부재를 알리기 위해. 이 접근은 그 메소드의 콜러가 그 특별한 값을 알고 이것을 체크하도록 한다. 스위프트의 옵셔널은 너가 모든 타입에 대해서 특별한 상수 없이 값의 부재를 알게 한다.
>
> 

## Error Handling

어떻게 옵셔널은 값의 부재를 다루는지 예시가 있다. 스위프트의 정수 타입은 스트링을 정수로 바꾸는걸 시도하는 이니셜라이져가 있다. 그러나 모든 문자열이 정수형으로 바뀔 수 있는 것은 아니다. "123"이라는 문자열은 정수로 123으로 바뀔 수 있지만 "hello word"라는 문자열은 그렇지 못하다.

밑에 예시는 문자열을 정수형으로 바꾸는것을 시도한다.

```swift
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
```

이리셜라이저가 실패 할 수도 있기 때문에 이것은 Int를 리턴하는것 대신에 Optional Int를 리턴한다. Optional Int 는 Int?로 나타낸 물음표는 optional이라고 지시한 Int?는 다른 Bool이나 String을 포함 할 수 없다 오로지 Int이거나 값이 없음을 나타낸다.

#### nil

너는 옵셔널 밸류에다가 값이 없다라는 상태로 nil을 할당 하면 된다.

```swift
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
```

> NOTE
>
> 너는 옵셔널 변수가 아닌곳에는 nil을 사용 할 수 없다. 만약 값의 부재를 표현하는것이 필요하다면 옵셔널 적절한 타입의 변수나 상수를 사용해야 한다.

만약 너가 초기값을 지정안하고 옵셔널 변수를 선언하다면 초기값은 자동적으로 nil이 설정 된다.

```swift
var surveyAnswer: String?
// surveyAnswer is automatically set to nil
```

> NOTE
>
> 스위프트의 nil은 Objective-C의 nil과는 다르다 Objective-C의 nil은 존재하지 않는 객체의 포인터이다. 스위프트에서는 포인터가 아니라, 특정한 타입의 값의 부재이다. 객체 뿐만 아니라 어떤 타입이던 옵셔널은 nil을 설정 할 수 있다

#### 

