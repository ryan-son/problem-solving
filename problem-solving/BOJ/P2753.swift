//
//  P2753.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈5 윤년](https://www.acmicpc.net/problem/2753)
func p2753() {
    let year = Int(readLine()!)!

    // 윤년임을 판단한다(4의 배수이면서 100의 배수가 아니거나, 400의 배수일 때).
    let isLeapYear = (year % 4 == 0) && (year % 100 != 0) || year % 400 == 0
    print(isLeapYear ? "1" : "0") // 윤년이면 1, 아니면 0 출력
}
