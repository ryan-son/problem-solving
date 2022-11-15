//
//  P2438.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 별 찍기 - 1](https://www.acmicpc.net/problem/2438)
func p2438() {
    let n = Int(readLine()!)!

    for i in 1...n {
        print(String(repeating: "*", count: i))
    }
}
