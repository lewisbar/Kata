//
//  PrimeCalculator9.swift
//  Kata
//
//  Created by LennartWisbar on 10.09.25.
//

public enum PrimeCalculator9 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }

        let candidates = 2...upperBound
        var collectedPrimes: [Int] = []

        for candidate in candidates {
            if candidate.isPrime(afterPrimes: collectedPrimes) {
                collectedPrimes.append(candidate)
            }
        }

        return collectedPrimes
    }
}

// MARK: - Helpers

private extension Int {
    func isPrime(afterPrimes primes: [Int]) -> Bool {
        let highestNecessaryQuotientToCheck = Int(sqrt(Double(self)))

        for prime in primes {
            guard prime <= highestNecessaryQuotientToCheck else { return true }
            if self.isMultiple(of: prime) { return false }
        }

        return true
    }
}
