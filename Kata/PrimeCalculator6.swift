//
//  PrimeCalculator6.swift
//  Kata
//
//  Created by LennartWisbar on 26.08.25.
//

public enum PrimeCalculator6 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }

        let candidates = 2...upperBound
        var collectedPrimes = [Int]()

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
    func isPrime(afterPrimes lowerPrimes: [Int]) -> Bool {
        let threshold = squareRootRoundedDown()

        for lowerPrime in lowerPrimes {
            if lowerPrime > threshold { return true }
            if self.isMultiple(of: lowerPrime) { return false }
        }

        return true
    }

    private func squareRootRoundedDown() -> Int {
        Int(sqrt(Double(self)))
    }
}
