//
//  P10950.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈5 A+B - 3](https://www.acmicpc.net/problem/10950)
func p10950() {
    let n = Int(readLine()!)!
    var numberCollections: [[Int]] = []

    for _ in 1...n {
        let inputNumbers = readLine()!.split(separator: " ").map { Int($0)! }
        numberCollections.append(inputNumbers)
    }

    for numbers in numberCollections {
        print("\(numbers.first! + numbers.last!)")
    }
}
