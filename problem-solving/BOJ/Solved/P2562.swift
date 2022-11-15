//
//  P2562.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈3 최댓값](https://www.acmicpc.net/problem/2562)
func p2562() {
    var numbers: [Int] = []

    for _ in 1...9 {
        let number = Int(readLine()!)!
        numbers.append(number)
    }

    let max = numbers.max()!
    let indexOfMax = numbers.firstIndex(of: max)!
    print(max)
    print(indexOfMax + 1)
}

