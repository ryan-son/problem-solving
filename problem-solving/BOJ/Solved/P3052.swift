//
//  P3052.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈2 나머지](https://www.acmicpc.net/problem/3052)
func p3052() {
    var modulatedNumberExistence: [Bool] = Array(repeating: false, count: 42) // index: 0...41

    for _ in 1...10 {
        let number = Int(readLine()!)!
        modulatedNumberExistence[number % 42] = true
    }

    let differentNumberCount = modulatedNumberExistence
        .filter { $0 }
        .count
    print(differentNumberCount)
}
