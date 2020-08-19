## [swift] 스위프트 정규표현식 그룹 캡쳐(group capture) 하는 방법



안녕하세요 이번엔 정규표현식에 대해 알아 보겠습니다. 정규표현식에 대해 잘 모르시는 분은 다른 분의 글을 먼저 참고 해주세요.. 나중에 정규표현식에 대해 다뤄보겠습니다... !!  사실 자료는 많이 있죠 ㅎ;



먼저 스위프트에서 정규 표현식을 사용하는 예제를 보여드릴꼐요. 회원가입을 하려 하는데 유저가 입력한 이메일이 올바른 이메일인지 확인 하기 위해 정규 표현식을 작성 하려 합니다. 



```swift
let title = "mildchaee@gmail.com asdfasdfasdf hello@world.com"
let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
let regex = try! NSRegularExpression(
    pattern: pattern,
    options: .caseInsensitive
)
let matches = regex.matches(in: title, range: NSRange(title.startIndex..., in: title))
let result = matches.map{
    String(title[Range($0.range, in: title)!])
}
print(result)
// ["mildchaee@gmail.com", "hello@world.com"]
```



오~ 이메일 형식 두개를 뽑아 냈네요 ! 이메일의 상황에선 여기서 만족해도 되지만 다른 상황에선 아이디와 `@` 뒤에 주소를 구별을 해야 할 수도 있어요 ! mildchaee 와 gmail.com을 말이죠 !



그렇게 하기 위해선 정규표현식에서 그룹을 지어줄 수 있습니다. 그룹을 짓는다는 것은 나중에 이놈을 기억했다가 쓰겠다는 의미 입니다. 정규표현식에서 그룹을 짓는 방법은 간단합니다 원하는 부분을 ` ( ) ` 로 묶어주면 됩니다. 



묶어볼까요 ?



```swift
let pattern = "([A-Z0-9a-z._%+-]+)@([A-Za-z0-9.-]+\\.[A-Za-z]{2,20})"
```



이렇게 @이를 기준으로 양 옆을 괄호로 묶어주겠습니다. 그럼 결과는 어떻게 될까요? 어떻게 묶여 나올까요 ? 결과는 

```swift
["mildchaee@gmail.com", "hello@world.com"]
```



똑같습니다.. 파이썬에선 저렇게 괄호만 묶어주어도 2차원 배열도 딱 나오는데 스위프트는 그러지 않습니다.

한번의 작업을 더 진행 해줘야 합니다. 



여기서 `matches` 에 어떤 값이 들어 있나 확인 해 보겠습니다.  

```swift
let title = "mildchaee@gmail.com asdfasdfasdf hello@world.com"
let pattern = "([A-Z0-9a-z._%+-]+)@([A-Za-z0-9.-]+\\.[A-Za-z]{2,20})"
let regex = try! NSRegularExpression(
    pattern: pattern,
    options: .caseInsensitive
)
let matches = regex.matches(in: title, range: NSRange(title.startIndex..., in: title))
print(matches[0])
print(matches[1])

<NSSimpleRegularExpressionCheckingResult: 0x10061d540>{0, 19}{<NSRegularExpression: 0x10061ece0> ([A-Z0-9a-z._%+-]+)@([A-Za-z0-9.-]+\.[A-Za-z]{2,20}) 0x1}
<NSSimpleRegularExpressionCheckingResult: 0x10061d640>{33, 15}{<NSRegularExpression: 0x10061ece0> ([A-Z0-9a-z._%+-]+)@([A-Za-z0-9.-]+\.[A-Za-z]{2,20}) 0x1}

```

음 생성된 객체의 주소와 range가 보이네요 원래 문자열에서 저만큼이 정규표현식과 맞는 범위라는 걸 표현 하는 거 같습니다. 그렇다면 우리가 그룹으로 묶어 뒀던 거는 어디 있을까요? 



힌트는 바로 `numberOfRanges` 에 있습니다.

```swift
print(matches[0].numberOfRanges)
print(matches[1].numberOfRanges)
//3
//3
```

둘다 범위의 갯수가 3이라고 표현하고 있습니다. 

```swift
print(matches[0].range(at: 0))
print(matches[0].range(at: 1))
print(matches[0].range(at: 2))
//{0, 19}
//{0, 9}
//{10, 9}

```

출력해보면 index 0 은 문자열 전체를 그 다음은 그룹을 캡쳐한 범위를 나타냅니다. 0인덱스부터 9개

10인덱스부터 9개 이렇게 나타냅니다.



```swift
let title = "mildchaee@gmail.com asdfasdfasdf hello@world.com"
let pattern = "([A-Z0-9a-z._%+-]+)@([A-Za-z0-9.-]+\\.[A-Za-z]{2,20})"
let regex = try! NSRegularExpression(
    pattern: pattern,
    options: .caseInsensitive
)
let matches = regex.matches(in: title, range: NSRange(title.startIndex..., in: title))

for i in 1..<3 {
    let range = matches[0].range(at: i)
    print(title[Range(range, in: title)!])
}
//mildchaee
//gmail.com
```

이렇게 잘 나오는 걸 볼 수 있습니다.