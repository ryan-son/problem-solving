//
//  P1316.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/04.
//

/// [실버5 그룹 단어 체커](https://www.acmicpc.net/problem/1316)
func p1316() {
    let n = Int(readLine()!)!
    var groupWordCount = 0

    for _ in 1...n {
        let word = readLine()!
        if word.isGroupWord() {
            groupWordCount += 1
        }
    }

    print(groupWordCount)
}

extension String {
    func isGroupWord() -> Bool {
        var groupWordStack: [Character] = []

        for character in self {
            if let last = groupWordStack.last {
                if character != last && groupWordStack.contains(character) {
                    return false
                } else {
                    groupWordStack.append(character)
                }
            } else {
                groupWordStack.append(character)
            }
        }
        return true
    }
}

//func p1316() {
//    let n = Int(readLine()!)!
//    var groupWordCount = 0
//
//    for _ in 1...n {
//        let word = readLine()!
//        if word.isGroupWord() {
//            groupWordCount += 1
//        }
//    }
//
//    print(groupWordCount)
//}
//
//private extension String {
//    enum GroupWordState {
//        case triggered
//        case closed
//        case none
//    }
//
//    func isGroupWord() -> Bool {
//        let alphabets = "abcdefghijklmnopqrstuvwxyz"
//        var groupWordFlags: [GroupWordState] = Array(repeating: .none, count: alphabets.count)
//        var previousCharacter = self.first!
//        let aAsciiValue = Character("a").asciiValue!
//
//        for character in self {
//            let previousCharacterAsciiValue = Int(previousCharacter.asciiValue! - aAsciiValue)
//            let currentCharacterAsciiValue = Int(character.asciiValue! - aAsciiValue)
//
//            guard groupWordFlags[currentCharacterAsciiValue] != .closed else { return false }
//
//            if character == previousCharacter {
//                groupWordFlags[previousCharacterAsciiValue] = .triggered
//            } else {
//                groupWordFlags[previousCharacterAsciiValue] = .closed
//            }
//            previousCharacter = character
//        }
//        return true
//    }
//}
