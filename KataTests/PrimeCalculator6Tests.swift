//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing
import Foundation

enum PrimeCalculator6 {
    static func primes(upTo upperBound: Int) -> [Int] {
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

private extension Int {
    func isPrime(afterPrimes lowerPrimes: [Int]) -> Bool {
        let threshold = squareRootRoundedDown()

        for lowerPrime in lowerPrimes {
            guard lowerPrime <= threshold else { return true }

            if self.isMultiple(of: lowerPrime) {
                return false
            }
        }

        return true
    }

    private func squareRootRoundedDown() -> Int {
        Int(sqrt(Double(self)))
    }
}

struct PrimeCalculator6Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: 0) == [])
    }

    @Test func primesUpToOne_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: 1) == [])
    }

    @Test func primesUpToTwo_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpToFour_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpToSeven_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func primesUpTo_performance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = PrimeCalculator6.primes(upTo: 10_000)
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime

        #expect(executionTime < 0.04)
    }
}
