//
//  P2675.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/03.
//

/// [브론즈2 문자열 반복](https://www.acmicpc.net/problem/2675)
func p2675() {
    let n = Int(readLine()!)!
    var input: [(Int, String)] = []

    for _ in 1...n {
        let subject = readLine()!.split(separator: " ")
        input.append((Int(subject[0])!, String(subject[1])))
    }

    input.forEach { repeatingCount, string in
        var result = ""
        string.forEach {
            result.append(String(repeating: $0, count: repeatingCount))
        }
        print(result)
    }
}
