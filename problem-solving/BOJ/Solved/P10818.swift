//
//  P10818.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈3 최소, 최대](https://www.acmicpc.net/problem/10818)
func p10818() {
    _ = readLine()!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (min, max) = (numbers.min()!, numbers.max()!)
    print("\(min) \(max)")
}
