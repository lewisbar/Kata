//
//  PrimeCalculator5.swift
//  Kata
//
//  Created by LennartWisbar on 25.08.25.
//

public enum PrimeCalculator5 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }

        var knownPrimes = [Int]()
        let candidates = 2...upperBound

        for candidate in candidates {
            if candidate.isPrime(afterKnownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }
}

private extension Int {
    func isPrime(afterKnownPrimes knownPrimes: [Int]) -> Bool {
        let root = Int(sqrt(Double(self)))

        for knownPrime in knownPrimes {
            if thresholdIsReached(with: knownPrime, threshold: root) { return true }
            if self.isMultiple(of: knownPrime) { return false }
        }
        return true
    }

    private func thresholdIsReached(with knownPrime: Int, threshold: Int) -> Bool {
        knownPrime > threshold
    }
}
