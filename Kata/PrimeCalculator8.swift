//
//  PrimeCalculator8.swift
//  Kata
//
//  Created by LennartWisbar on 08.09.25.
//

public enum PrimeCalculator8 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }
        let candidates = 2...upperBound
        var collectedPrimes: [Int] = []

        for candidate in candidates {
            if candidate.isNextPrime(afterPrimes: collectedPrimes) {
                collectedPrimes.append(candidate)
            }
        }

        return collectedPrimes
    }
}

// MARK: - Helpers

private extension Int {
    func isNextPrime(afterPrimes lowerPrimes: [Int]) -> Bool {
        let highestNecessaryPrimeToCheck = Int(sqrt(Double(self)))

        for lowerPrime in lowerPrimes {
            guard lowerPrime <= highestNecessaryPrimeToCheck else { return true }
            if self.isMultiple(of: lowerPrime) { return false }
        }

        return true
    }
}
