//
//  NumberList.swift
//  LittleTest
//
//  Created by Rodrigo Ibañez on 1/24/19.
//  Copyright © 2019. All rights reserved.
//

import Foundation

protocol NumberList {
    func make() -> [String]
}

class NumberListEven: NumberList {

    func make() -> [String] {
        return (1...100).map{ "\($0 * 2)"}
    }
}

class NumberListPower: NumberList {

    func make() -> [String] {
        return (1...100).map{
            let power = Double($0)
            return "\(pow(2.0, power))"
        }
    }
}

class NumberListFibonacci: NumberList {

    func make() -> [String] {
        var list: [Double] = [0.0,1.0]
        (2...99).forEach { i in
            list.append(list[i - 1] + list[i - 2])
        }
        return list.map { String($0)}
    }
}

class NumberListPrimes: NumberList {
    func make() -> [String] {
        var list = ["1"]
        var number = 2


        while list.count <= 99 {
            if isPrime(number) {
                list.append("\(number)")
            }
            number = number + 1
        }
        return list
    }

    func isPrime(_ number: Int) -> Bool {
        for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}
