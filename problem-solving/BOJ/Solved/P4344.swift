//
//  P4344.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

import Foundation

/// [브론즈1 평균은 넘겠지](https://www.acmicpc.net/problem/4344)
func p4344() {
    let n = Int(readLine()!)!

    for _ in 1...n {
        let countAndScores = readLine()!.split(separator: " ").map { Double($0)! }
        let (count, scores) = (countAndScores.first!, countAndScores.dropFirst())
        let averageScore = scores.reduce(Double(0), +) / count
        let studentsWhoExceedsAverageScore = scores.filter { $0 > averageScore }
        let exceedsAverageScoreRatio = Double(studentsWhoExceedsAverageScore.count) / count
        let roundedPercent = round(exceedsAverageScoreRatio * 1000 * 100) / 1000
        print(String(format: "%.3f%%", roundedPercent))
    }
}
