//
//  PrimesCalculator4.swift
//  Kata
//
//  Created by LennartWisbar on 21.08.25.
//

import Foundation

public enum PrimesCalculator4 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }

        var knownPrimes = [Int]()
        let candidates = 2...upperBound

        for candidate in candidates {
            if candidate.isNextPrime(afterKnownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }
        return knownPrimes
    }
}

// MARK: - Helpers

private extension Int {
    func isNextPrime(afterKnownPrimes knownPrimes: [Int]) -> Bool {
        let root = Int(sqrt(Double(self)))

        for knownPrime in knownPrimes {
            guard knownPrime <= root else { return true }

            if self % knownPrime == 0 {
                return false
            }
        }
        return true
    }
}
