

## subscript

서브스크립트는 클래스나 구조체나 열거형에 정의 할 수 있는데 한마디로 배열에 인덱스로 접근하듯이 구조체나 클래스도 인덱스로 접근 할 수 있게 해주는 키워드 이다. !

구조체로 예를 들면 구조체 안에 `subscript` 키워드를 통해 적용 할 수 있다. 파라미터로는 `Int`와 `Range` 를 받을 수 있다 

```swift

struct IPSlice {
    let ip: UInt32
    
    subscript(index: Int) -> UInt32 {
        return (ip >> (31 - index)) % UInt32(2)
    }
    subscript(bound: Range<Int>) -> UInt32 {
        return (ip >> (31 - bound.upperBound + 1)) % UInt32(pow(2,Double(bound.upperBound - bound.lowerBound)))
    }
}

let t1 = IPSlice(ip: 0b10101111_11111111_11111111_11111111)
print(t1[0..<8], t1[8..<16], t1[16..<24], t1[24..<32])
//175 255 255 255

```

위의 예제는 IPv4의 ip를 slice하기 위해 임의로 만들어 보았다.