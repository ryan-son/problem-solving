//
//  P2869.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/09.
//

import Foundation

/// [브론즈1 달팽이는 올라가고 싶다](https://www.acmicpc.net/problem/2869)
func p2869() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (climb, slip, goal) = (numbers[0], numbers[1], numbers[2])
    let goalClimbDifference = Double(goal - climb)
    let climbPerDay = Double(climb - slip)
    print(Int(ceil(goalClimbDifference / climbPerDay)) + 1)
}
