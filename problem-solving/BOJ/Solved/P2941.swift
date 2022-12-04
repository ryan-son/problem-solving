//
//  P2941.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/04.
//

import Foundation

/// [실버5 크로아티아 알파벳](https://www.acmicpc.net/problem/2941)
func p2941() {
    var croatianWord = readLine()!
    let croatianAlphabets = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

    for alphabet in croatianAlphabets {
        croatianWord = croatianWord.replacingOccurrences(of: alphabet, with: "A")
    }

    print(croatianWord.count)
}


//var croatiaWord = readLine()!
//var croatiaAlphabetCount = 0
//
//func occurrence(of string: String) {
//    while let occurrenceIndex = croatiaWord.range(of: string) {
//        croatiaWord.replaceSubrange(occurrenceIndex, with: " ")
//        croatiaAlphabetCount += 1
//    }
//}
//
//["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
//    .forEach(occurrence(of:))
//
//croatiaWord = croatiaWord.replacingOccurrences(of: " ", with: "")
//
//print(croatiaWord.count + croatiaAlphabetCount)
