//
//  main.swift
//  ExamHash
//
//  Created by 이은호 on 2022/10/31.
//

import Foundation

// nil로 초기화된 4개의 슬롯을 가지는 해시 테이블 생성
var hashTable: [String?] = .init(repeating: nil, count: 3)

func hash(key: Int) -> Int {
    return key % 3
}

// 해시 테이블에 저장하는 함수
func updateValue(_ value: String, forKey key: String) {
    guard let key = UnicodeScalar(key)?.value else { return }
    let hashAddress = hash(key: Int(key))
    hashTable[hashAddress] = value
}

// 해시 테이블의 값을 얻는 함수
func getValue(forKey key: String) -> String? {
    guard let key = UnicodeScalar(key)?.value else { return nil }
    let hashAddress = hash(key: Int(key))
    return hashTable[hashAddress]
}

updateValue("재석", forKey: "유")
updateValue("명수", forKey: "박")
updateValue("소들", forKey: "김")

print(getValue(forKey: "유")!)
print(getValue(forKey: "박")!)
print(getValue(forKey: "김")!)




