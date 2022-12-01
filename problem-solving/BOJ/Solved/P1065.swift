//
//  P1065.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/01.
//

/// [실버4 한수](https://www.acmicpc.net/problem/1065)
func p1065() {
    let n = Int(readLine()!)!
    var hansuCount = 0

    for i in 1...n where i.isHansu() {
        hansuCount += 1
    }

    print(hansuCount)
}

private extension Int {
    func isHansu() -> Bool {
        let split = String(self).map { Int(String($0))! }
        return split.isArithmeticProgression()
    }
}

private extension Array where Element == Int {
    func isArithmeticProgression() -> Bool {
        guard self.count > 2 else { return true }

        var previousElement: Int = self[0]
        let subtracted: Int = self[1] - self[0]

        for (index, element) in self.enumerated() where index > 0 {
            if subtracted == element - previousElement {
                previousElement = element
                continue
            } else {
                return false
            }
        }
        return true
    }
}
