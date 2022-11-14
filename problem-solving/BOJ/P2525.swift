//
//  P2525.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈3 오븐 시계](https://www.acmicpc.net/problem/2525)
func p2525() {
    let startTime = readLine()!.split(separator: " ").map { Int($0)! }
    let requiredMinute = Int(readLine()!)!

    let startTimeInMinute = (startTime.first! * 60) + startTime.last!
    let endTimeInMinute = startTimeInMinute + requiredMinute

    let dayInMinute = 24 * 60

    if endTimeInMinute >= dayInMinute {
        let newEndTimeInMinute = endTimeInMinute - dayInMinute
        print("\(newEndTimeInMinute / 60) \(newEndTimeInMinute % 60)")
    } else {
        print("\(endTimeInMinute / 60) \(endTimeInMinute % 60)")
    }
}
