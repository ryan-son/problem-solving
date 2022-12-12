//
//  P1978.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/12.
//

/// [실버5 소수 찾기](https://www.acmicpc.net/problem/1978)
func p1978() {
    _ = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    print(numbers.primeCount())
}

fileprivate extension Array where Element == Int {

    func primeCount() -> Int {
        let maximumNumber = self.max()!
        var numbers = Array(0...maximumNumber + 1)
        numbers[1] = 0
        var primeCount = 0

        for i in 2...maximumNumber {
            guard numbers[i] != 0 else { continue }

            for j in stride(from: i + i, through: maximumNumber, by: i) {
                numbers[j] = 0
            }
        }

        for i in self where numbers.contains(i) {
            primeCount += 1
        }
        return primeCount
    }
}
