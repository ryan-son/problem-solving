//
//  P5622.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/04.
//

/// [브론즈2 다이얼](https://www.acmicpc.net/problem/5622)
func p5622() {
    let dialString = readLine()!
    let dialEnterTime = dialString
        .map { $0.dialEnterTime! }
        .reduce(0, +)
    print(dialEnterTime)
}

fileprivate extension Character {
    var dialEnterTime: Int? {
        switch self {
        case "A", "B", "C":
            return 3
        case "D", "E", "F":
            return 4
        case "G", "H", "I":
            return 5
        case "J", "K", "L":
            return 6
        case "M", "N", "O":
            return 7
        case "P", "Q", "R", "S":
            return 8
        case "T", "U", "V":
            return 9
        case "W", "X", "Y", "Z":
            return 10
        default:
            return nil
        }
    }
}
