//
//  P11723.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/13.
//

/// [실버 5 집합](https://www.acmicpc.net/problem/11723)
func p11723() {
    let n = Int(readLine()!)!
    var numbers: Set<Int> = []

    for _ in 1...n {
        let command = readLine()!.split(separator: " ")

        switch command[0] {
        case "add":
            let number = Int(command[1])!
            if numbers.contains(number) {
                continue
            } else {
                numbers.insert(number)
            }
        case "remove":
            let number = Int(command[1])!
            if numbers.contains(number) {
                numbers.remove(number)
            } else {
                continue
            }
        case "check":
            let number = Int(command[1])!
            if numbers.contains(number) {
                print(1)
            } else {
                print(0)
            }
        case "toggle":
            let number = Int(command[1])!
            if numbers.contains(number) {
                numbers.remove(number)
            } else {
                numbers.insert(number)
            }
        case "all":
            numbers = Set(1...20)
        case "empty":
            numbers.removeAll()
        default:
            continue
        }
    }
}

//import Foundation
//// https://velog.io/@rarebook92/%EB%B0%B1%EC%A4%80%EC%9D%80-Swift-%EC%8B%9C%EA%B0%84%EC%B4%88%EA%B3%BC%EC%97%90-%EA%B4%80%EB%8C%80%ED%95%B4%EC%A4%98%EB%9D%BC-ver.2
//class FileIO {
//    @inline(__always) private var buffer: [UInt8] = Array(FileHandle.standardInput.readDataToEndOfFile()) + [0], byteIdx = 0
//
//    @inline(__always) private func readByte() -> UInt8 {
//        defer { byteIdx += 1 }
//        return buffer.withUnsafeBufferPointer { $0[byteIdx] }
//    }
//
//    @inline(__always) func readInt() -> Int {
//        var number = 0, byte = readByte(), isNegative = false
//        while byte == 10 || byte == 32 { byte = readByte() }
//        if byte == 45 { byte = readByte(); isNegative = true }
//        while 48...57 ~= byte { number = number * 10 + Int(byte - 48); byte = readByte() }
//        return number * (isNegative ? -1 : 1)
//    }
//
//    @inline(__always) func readStirngSum() -> Int {
//        var byte = readByte()
//        while byte == 10 || byte == 32 { byte = readByte() }
//        var sum = Int(byte)
//        while byte != 10 && byte != 32 && byte != 0 { byte = readByte(); sum += Int(byte) }
//        return sum - Int(byte)
//    }
//
//    @inline(__always) private func write(_ output: String) {
//        FileHandle.standardOutput.write(output.data(using: .utf8)!)
//    }
//}
//
//let file = FileIO()
//
//let m = file.readInt()
//
//var bit = 0
//for _ in 0..<m{
//    let oper = file.readString()
//    let x = file.readInt()
//
//    switch command[0] {
//    case "add":
//        bit |= (1 << x)
//    case "remove":
//        bit &= ~(1 << x)
//    case "check":
//        if (bit & (1 << x) != 0) {
//            print(1)
//        } else {
//            print(0)
//        }
//    case "toggle":
//        bit ^= (1 << x)
//    case "all":
//        bit |= (~0)
//    case "empty":
//        bit &= 0
//    default:
//        continue
//    }
//}
