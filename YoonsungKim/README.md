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

<br>
##제어문
###switch-case
case 에 아무런 문장이 없으면 안된다.
break 가 필요없다.  
fallthrough 를 자동 지원하지 않는다.    
continue: default 건너뛰도록 함 (switch문 끝)  
fallthrough: default 건너뛰지 않음(switch문 계속 진행)

<br>
##Function
함수 호출시 매개변수가 2개 이상이면 **두 번째 매개변수부터는 반드시 레이블을 붙여서 호출해야한다.(첫 번째 매개변수는 레이블을 붙이면 안됌. 붙이려면 레이블 따로 지정)**  
ex) func greet(name:String, day:String) -> (String)  
greet("홍길동", day: "수요일") : o  
greet("홍길동", "수요일") : x  
greet(name: "홍길동", day: "수요일") : x  <br><br>
레이블 따로 지정하는 법   
func greet(name na:String)  
name : 레이블, na : 매개변수 명
<br><br>
**함수의 중복정의가 가능** ; 매개변수로 구분  

ex) func greeting() != func greeting(name:String)