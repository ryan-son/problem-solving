//
//  P2739.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈5 구구단](https://www.acmicpc.net/problem/2739)
func p2739() {
    let n = Int(readLine()!)!

    for i in 1...9 {
        print("\(n) * \(i) = \(n * i)")
    }
}
