//
//  P8958.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈2 OX퀴즈](https://www.acmicpc.net/problem/8958)
func p8958() {
    let n = Int(readLine()!)!

    for _ in 1...n {
        print(score(from: readLine()!))
    }
}

fileprivate func score(from submitAnswer: String) -> Int {
    var totalScore: Int = 0
    var correctStreakScore: Int = 1

    for eachAnswer in submitAnswer {
        if eachAnswer == "O" {
            totalScore += correctStreakScore
            correctStreakScore += 1
        } else {
            correctStreakScore = 1
        }
    }
    return totalScore
}
