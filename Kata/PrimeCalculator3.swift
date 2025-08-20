//
//  PrimeCalculator3.swift
//  Kata
//
//  Created by LennartWisbar on 20.08.25.
//

import Foundation

public enum PrimeCalculator3 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }

        let candidates = 2...upperBound
        var knownPrimes = [Int]()

        for candidate in candidates {
            if candidate.isNextPrime(after: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }
}

private extension Int {
    func isNextPrime(after allLowerPrimes: [Int]) -> Bool {
        let root = Int(sqrt(Double(self)))

        for lowerPrime in allLowerPrimes {
            guard lowerPrime <= root else { return true }

            if self % lowerPrime == 0 {
                return false
            }
        }
        return true
    }
}
