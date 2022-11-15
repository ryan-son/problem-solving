//
//  P10807.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 개수 세기](https://www.acmicpc.net/problem/10807)
func p10807() {
    let _ = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let targetNumber = Int(readLine()!)!

    print(numbers.filter({ $0 == targetNumber }).count)
}
