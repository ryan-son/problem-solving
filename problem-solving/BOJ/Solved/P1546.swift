//
//  P1546.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈1 평균](https://www.acmicpc.net/problem/1546)
func p1546() {
    _ = Int(readLine()!)!
    let scores = readLine()!.split(separator: " ").map { Double($0)! }
    let maxScore = scores.max()!
    let newScores = scores.map { ($0 / maxScore) * 100 }
    let averageScore = newScores.reduce(Double(0), +) / Double(scores.count)
    print(averageScore)
}
