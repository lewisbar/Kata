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
    @Test func primesUpTo_returnsCorrectPrimes() {
        #expect(calculatePrimes(upTo: -1) == [])
        #expect(calculatePrimes(upTo: 0) == [])
        #expect(calculatePrimes(upTo: 1) == [])
        #expect(calculatePrimes(upTo: 2) == [2])
        #expect(calculatePrimes(upTo: 3) == [2, 3])
        #expect(calculatePrimes(upTo: 4) == [2, 3])
        #expect(calculatePrimes(upTo: 5) == [2, 3, 5])
        #expect(calculatePrimes(upTo: 6) == [2, 3, 5])
        #expect(calculatePrimes(upTo: 7) == [2, 3, 5, 7])
        #expect(calculatePrimes(upTo: 8) == [2, 3, 5, 7])
        #expect(calculatePrimes(upTo: 9) == [2, 3, 5, 7])
        #expect(calculatePrimes(upTo: 10) == [2, 3, 5, 7])
        #expect(calculatePrimes(upTo: 11) == [2, 3, 5, 7, 11])
        #expect(calculatePrimes(upTo: 12) == [2, 3, 5, 7, 11])
        #expect(calculatePrimes(upTo: 13) == [2, 3, 5, 7, 11, 13])
        #expect(calculatePrimes(upTo: 14) == [2, 3, 5, 7, 11, 13])
        #expect(calculatePrimes(upTo: 15) == [2, 3, 5, 7, 11, 13])
        #expect(calculatePrimes(upTo: 16) == [2, 3, 5, 7, 11, 13])
        #expect(calculatePrimes(upTo: 17) == [2, 3, 5, 7, 11, 13, 17])
        #expect(calculatePrimes(upTo: 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
    }

    // MARK: - Helpers

    private func calculatePrimes(upTo upperBound: Int) -> [Int] {
        PrimeCalculator9.primes(upTo: upperBound)
    }
}
