//
//  P2566.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/11.
//

import Foundation

/// [브론즈3 최댓값](https://www.acmicpc.net/problem/2566)
func p2566() {
    var a: [[Int]] = []

    for _ in 1...9 {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        a.append(numbers)
    }

    let flatMappedA = a.flatMap { $0 }
    let maximumNumber = flatMappedA.max()!
    let index = flatMappedA.firstIndex(of: maximumNumber)!
    let row = (index / 9) + 1
    let column = (index % 9) + 1
    print(maximumNumber)
    print(row, column)
}
