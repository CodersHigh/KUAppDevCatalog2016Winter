#Yoonsung Kim AppDevelop(*Swift*)
<br>
##Optional
let optionalString:String? = "Optional"

let a = optionalString

**if let** b = optionalString

- if let : optional 변수가 nil이 아니면 if문 실행
- a : optional 변수 , b : non-optional 변수
- if let 다음에 나오는 변수는 if문이 끝나면 사라진다.

optional 변수에 값을 넣을 때는 optional을 unwrapping할 필요 없지만 optional 변수에 **접근, 변경하는 경우** 반드시 unwrapping해야한다.