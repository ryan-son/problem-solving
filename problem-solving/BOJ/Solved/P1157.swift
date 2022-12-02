//
//  P1157.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/03.
//

/// [브론즈1 단어 공부](https://www.acmicpc.net/problem/1157)
func p1157() {
    let alphabets = "abcdefghijklmnopqrstuvwxyz"
    var existenceCount = Array(repeating: 0, count: alphabets.count)

    let aAsciiValue = Character("A").asciiValue!
    let word = readLine()!
    word.forEach {
        let index = Int(Character($0.uppercased()).asciiValue! - aAsciiValue)
        existenceCount[index] += 1
    }
    let max = existenceCount.max()!
    let maxCount = existenceCount.filter { $0 == max }.count

    if maxCount > 1 {
        print("?")
    } else {
        let targetAsciiValue = existenceCount.firstIndex(of: max)! + Int(aAsciiValue)
        print(String(UnicodeScalar(targetAsciiValue)!))
    }
}
