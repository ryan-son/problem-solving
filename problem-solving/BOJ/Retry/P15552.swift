//
//  P15552.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/15.
//

/// [브론즈4 빠른 A+B](https://www.acmicpc.net/problem/15552)
func p15552() {
    let n = Int(readLine()!)!
    var numbersCollection: [[Int]] = []

    for _ in 1...n {
        let newNumbers = readLine()!.split(separator: " ").map { Int($0)! }
        numbersCollection.append(newNumbers)
    }

    numbersCollection.forEach { print("\($0.first! + $0.last!)") }
}

// 2022. 11. 15. FileIO를 별도로 구현하여 입력을 받아야 함.
// https://gist.github.com/JCSooHwanCho/30be4b669321e7a135b84a1e9b075f88
// 위 풀이는 O(n)의 복잡도를 가진 `split(separator:)`를 사용하여 시간 초과 발생하여 오답
