//
//  PrimeCalculator7.swift
//  Kata
//
//  Created by LennartWisbar on 27.08.25.
//

public enum PrimeCalculator7 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }

        var collectedPrimes = [Int]()
        let candidates = 2...upperBound

        for candidate in candidates {
            if candidate.isPrime(afterPrimes: collectedPrimes) {
                collectedPrimes.append(candidate)
            }
        }

        return collectedPrimes
    }
}

private extension Int {
    func isPrime(afterPrimes primes: [Int]) -> Bool {
        let threshold = squareRootRoundedDown()

        for prime in primes {
            guard prime <= threshold else { return true }

            if self.isMultiple(of: prime) {
                return false
            }
        }
        return true
    }

    func squareRootRoundedDown() -> Int {
        Int(sqrt(Double(self)))
    }
}
