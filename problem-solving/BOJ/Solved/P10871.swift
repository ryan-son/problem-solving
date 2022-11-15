//
//  P10871.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 X보다 작은 수](https://www.acmicpc.net/problem/10871)
func p10871() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input.last!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let result = numbers
        .filter { $0 < x }
        .map { String($0) }
        .joined(separator: " ")
    print(result)
}
