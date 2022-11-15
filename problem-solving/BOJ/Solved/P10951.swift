//
//  P10951.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 A+B - 4](https://www.acmicpc.net/problem/10951)
func p10951() {
    while let numbers = readLine() {
        let sum = numbers.split(separator: " ").map({ Int($0)! }).reduce(0, +)
        print(sum)
    }
}
