//
//  PrimeCalculator9Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 10.09.25.
//

import Testing

enum PrimeCalculator9 {
    static func primes(upTo upperBound: Int) -> [Int] {
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

private extension Int {
    func isPrime(afterPrimes primes: [Int]) -> Bool {
        for prime in primes {
            if self.isMultiple(of: prime) {
                return false
            }
        }

        return true
    }
}

struct PrimeCalculator9Tests {
    @Test func upperBoundSmallerThan2_returnsEmpty() {
        #expect(calculatePrimes(upTo: -1) == [])
        #expect(calculatePrimes(upTo: 0) == [])
        #expect(calculatePrimes(upTo: 1) == [])
    }

    @Test func upperBound2_returns2() {
        #expect(calculatePrimes(upTo: 2) == [2])
    }

    @Test func upperBound3_returnsCorrectNumbers() {
        #expect(calculatePrimes(upTo: 3) == [2, 3])
    }

    @Test func upperBound4_returnsCorrectNumbers() {
        #expect(calculatePrimes(upTo: 4) == [2, 3])
    }

    @Test func upperBoundUpTo8_returnsCorrectNumbers() {
        #expect(calculatePrimes(upTo: 5) == [2, 3, 5])
        #expect(calculatePrimes(upTo: 6) == [2, 3, 5])
        #expect(calculatePrimes(upTo: 7) == [2, 3, 5, 7])
        #expect(calculatePrimes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func upperBoundUpTo9_returnsCorrectNumbers() {
        #expect(calculatePrimes(upTo: 9) == [2, 3, 5, 7])
    }

    // MARK: - Helpers

    private func calculatePrimes(upTo upperBound: Int) -> [Int] {
        PrimeCalculator9.primes(upTo: upperBound)
    }
}
