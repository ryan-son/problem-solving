//
//  P11021.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 A+B - 7](https://www.acmicpc.net/problem/11021)
func p11021() {
    let n = Int(readLine()!)!

    for i in 1...n {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        print("Case #\(i): \(numbers.first! + numbers.last!)")
    }
}
