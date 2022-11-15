//
//  P2439.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈4 별 찍기 - 2](https://www.acmicpc.net/problem/2439)
func p2439() {
    let n = Int(readLine()!)!

    for i in 1...n {
        print(String(repeating: " ", count: n - i) + String(repeating: "*", count: i))
    }
}
