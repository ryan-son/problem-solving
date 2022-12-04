//
//  P2908.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/04.
//

/// [브론즈2 상수](https://www.acmicpc.net/problem/2908)
func p2908() {
    let numbers = readLine()!.split(separator: " ")
    let reversedNumbers = numbers.map { Int(String($0.reversed()))! }
    print(reversedNumbers.max()!)
}
