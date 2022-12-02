//
//  P11720.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/02.
//

/// [브론즈4 숫자의 합](https://www.acmicpc.net/problem/11720)
func p11720() {
    _ = readLine()
    let sum = readLine()!
        .map { Int(String($0))! }
        .reduce(0, +)
    print(sum)
}
