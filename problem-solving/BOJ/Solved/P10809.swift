//
//  P10809.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/03.
//

/// [브론즈5 알파벳 찾기](https://www.acmicpc.net/problem/10809)
func p10809() {
    let string = readLine()!
    let alphabets = "abcdefghijklmnopqrstuvwxyz"
    var existences: [Int] = Array(repeating: -1, count: alphabets.count)

    alphabets.enumerated().forEach { index, alphabet in
        if let existenceIndex = string.firstIndex(of: alphabet) {
            existences[index] = string.distance(from: string.startIndex, to: existenceIndex)
        }
    }
    print(existences.map(String.init).joined(separator: " "))
}
