//
//  P2884.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈3 알람 시계](https://www.acmicpc.net/problem/2884)
func p2884() {
    let time = readLine()!.split(separator: " ").map { Int($0)! }
    let (hour, minute) = (time.first!, time.last!)

    let minuteConverted = (hour * 60) + minute
    let alarmtime = minuteConverted - 45

    if alarmtime > 0 {
        print("\(alarmtime / 60) \(alarmtime % 60)")
    } else if alarmtime == 0 {
        print("\(alarmtime / 60) 0")
    } else {
        print("23 \(alarmtime + 60)")
    }
}
