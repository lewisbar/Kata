//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing
import Kata

struct PrimeCalculator6Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(calculatePrimes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(calculatePrimes(upTo: 0) == [])
    }

    @Test func primesUpToOne_returnsEmpty() {
        #expect(calculatePrimes(upTo: 1) == [])
    }

    @Test func primesUpToTwo_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 3) == [2, 3])
    }

    @Test func primesUpToFour_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpToSeven_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsCorrectResult() {
        #expect(calculatePrimes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func primesUpTo_performance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = calculatePrimes(upTo: 10_000)
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime

        #expect(executionTime < 0.04)
    }

    // MARK: - Helpers

    private func calculatePrimes(upTo upperBound: Int) -> [Int] {
        PrimeCalculator6.primes(upTo: upperBound)
    }
}
