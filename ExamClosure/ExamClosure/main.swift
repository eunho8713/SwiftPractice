//
//  main.swift
//  ExamClosure
//
//  Created by 이은호 on 2022/10/29.
//

import Foundation

// 기본적인 클로저표현
//(Parameter와 Return Type이 둘 다 없는 클로저)
let closure = { () -> () in
    print("closure입니다.")
}

closure()

// Parameter와 Return Type이 있는 클로저
let closure2 = { (name: String) -> String in
    return "\(name) 입니다."
}

print(closure2("closure2"))


// 기존 클로저를 다른 프로퍼티에 대입
let closure3 = closure2

// 함수의 매개변수로 클로저 대입
func doSomething(closure: () -> ()) {
    closure()
}

doSomething {
    print("Hello?")
}

// 매개변수로 closure 넘겨주기
doSomething(closure: { () -> () in
    print("Hello!")
})




