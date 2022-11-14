//
//  P2480.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈4 주사위 세개](https://www.acmicpc.net/problem/2480)
func p2480() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b, c) = (numbers[0], numbers[1], numbers[2])
    let isABSame = a == b
    let isBCSame = b == c
    let isACSame = a == c

    if isABSame && isBCSame { // 같은 눈 3개: 10_000 + (같은 눈) * 1_000
        print(threeNumberIdenticalPrize(for: a))
    } else if isABSame { // 같은 눈 2개: 1_000 + (같은 눈) * 100
        print(twoNumberIdenticalPrize(for: a))
    } else if isBCSame {
        print(twoNumberIdenticalPrize(for: b))
    } else if isACSame {
        print(twoNumberIdenticalPrize(for: a))
    } else { // 모두 다른 눈: (그 중 가장 큰 눈) * 100
        print(noIdenticalNumberPrize(for: numbers))
    }

    func threeNumberIdenticalPrize(for number: Int) -> String {
        return "\(10_000 + number * 1_000)"
    }

    func twoNumberIdenticalPrize(for number: Int) -> String {
        return "\(1_000 + number * 100)"
    }

    func noIdenticalNumberPrize(for numbers: [Int]) -> String {
        return "\(numbers.max()! * 100)"
    }
}
