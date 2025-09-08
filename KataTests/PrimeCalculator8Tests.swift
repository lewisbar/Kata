//
//  PrimeCalculator8Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 08.09.25.
//

import Testing
import Foundation

enum PrimeCalculator8 {
    static func primes(upTo upperBound: Int) -> [Int] {
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

private extension Int {
    func isNextPrime(afterPrimes lowerPrimes: [Int]) -> Bool {
        let highestNecessaryPrimeToCheck = Int(sqrt(Double(self)))

        for lowerPrime in lowerPrimes {
            guard lowerPrime <= highestNecessaryPrimeToCheck else { return true }

            if self.isMultiple(of: lowerPrime) {
                return false
            }
        }

        return true
    }
}

struct PrimeCalculator8Tests {
    @Test func negativeUpperBound_returnsEmpty() {
        #expect(PrimeCalculator8.primes(upTo: -1) == [])
    }

    @Test func upperBoundZero_returnsEmpty() {
        #expect(PrimeCalculator8.primes(upTo: 0) == [])
    }

    @Test func upperBound1_returnsEmpty() {
        #expect(PrimeCalculator8.primes(upTo: 1) == [])
    }

    @Test func upperBound2_returns2() {
        #expect(PrimeCalculator8.primes(upTo: 2) == [2])
    }

    @Test func upperBound3_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 3) == [2, 3])
    }

    @Test func upperBound4_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 4) == [2, 3])
    }

    @Test func upperBound5_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func upperBound6_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func upperBound7_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func upperBound8_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func upperBound9_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func upperBound10_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func upperBound11_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func upperBound12_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func upperBound13_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func upperBound14_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 14) == [2, 3, 5, 7, 11, 13])
    }

    @Test func upperBound15_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 15) == [2, 3, 5, 7, 11, 13])
    }

    @Test func upperBound16_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 16) == [2, 3, 5, 7, 11, 13])
    }

    @Test func upperBound17_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 17) == [2, 3, 5, 7, 11, 13, 17])
    }

    @Test func upperBound18_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 18) == [2, 3, 5, 7, 11, 13, 17])
    }

    @Test func upperBound19_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 19) == [2, 3, 5, 7, 11, 13, 17, 19])
    }

    @Test func upperBound20_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 20) == [2, 3, 5, 7, 11, 13, 17, 19])
    }

    @Test func upperBound21_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 21) == [2, 3, 5, 7, 11, 13, 17, 19])
    }

    @Test func upperBound22_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 22) == [2, 3, 5, 7, 11, 13, 17, 19])
    }

    @Test func upperBound23_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 23) == [2, 3, 5, 7, 11, 13, 17, 19, 23])
    }

    @Test func upperBound24_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 24) == [2, 3, 5, 7, 11, 13, 17, 19, 23])
    }

    @Test func upperBound25_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 25) == [2, 3, 5, 7, 11, 13, 17, 19, 23])
    }

    @Test func upperBound100_returnsCorrectResult() {
        #expect(PrimeCalculator8.primes(upTo: 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
    }

    @Test func performance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = PrimeCalculator8.primes(upTo: 10_000)
        let endTime = CFAbsoluteTimeGetCurrent()
        let executionTime = endTime - startTime

        #expect(executionTime < 0.04)
    }
}
