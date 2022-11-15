//
//  P1110.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈1 더하기 사이클](https://www.acmicpc.net/problem/1110)
func p1110() {
    let n = Int(readLine()!)!
    var cycleCount: Int = 0

    var numbers = n

    while true {
        let post = String(String(numbers).last!) // 다음 숫자의 앞자리
        let sum = numbers.splitByDigit().reduce(0, +)
        let sumPost = String(String(sum).last!) // 다음 숫자의 뒷자리
        numbers = Int(post + sumPost)! // 다음 숫자
        cycleCount += 1
        if numbers == n { break }
    }

    print(cycleCount)
}

fileprivate extension Int {
    func splitByDigit() -> [Int] {
        return String(self).map { Int(String($0))! }
    }
}

// 26
// 2 + 6 = 8
// 6 + 8 = 14
// 8 + 4 = 12
// 4 + 2 = 6
// 26
// post + answerPost
