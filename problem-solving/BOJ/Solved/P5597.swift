//
//  P5597.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 과제 안 내신 분..?](https://www.acmicpc.net/problem/5597)
func p5597() { // 8 ms
    var numbers: [Int] = []

    for _ in 1...28 {
        let number = Int(readLine()!)!
        numbers.append(number)
    }

    var studentNumbers = Array(1...30)
    numbers
        .sorted()
        .forEach { number in
            studentNumbers.removeAll { $0 == number }
        }

    print(studentNumbers.first!)
    print(studentNumbers.last!)
}

// 다른 풀이 12 ms
//var numbers: [Int] = []
//
//for _ in 1...28 {
//    let number = Int(readLine()!)!
//    numbers.append(number)
//}
//
//var submit = Array(repeating: false, count: 30)
//numbers.forEach { submit[$0 - 1] = true }
//
//for (index, submit) in submit.enumerated() where submit == false {
//    print(index + 1)
//}
