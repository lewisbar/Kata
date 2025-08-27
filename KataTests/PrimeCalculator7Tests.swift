//
//  PrimeCalculator7Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 27.08.25.
//

import Testing
import Kata

struct PrimeCalculator7Tests {
    @Test func primesUpTo_returnsEmptyForNegativeUpperBound() {
        #expect(calculatePrimes(upTo: -1) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundZero() {
        #expect(calculatePrimes(upTo: 0) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundOne() {
        #expect(calculatePrimes(upTo: 1) == [])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTwo() {
        #expect(calculatePrimes(upTo: 2) == [2])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundThree() {
        #expect(calculatePrimes(upTo: 3) == [2, 3])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundFour() {
        #expect(calculatePrimes(upTo: 4) == [2, 3])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundFive() {
        #expect(calculatePrimes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundSix() {
        #expect(calculatePrimes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundSeven() {
        #expect(calculatePrimes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundEight() {
        #expect(calculatePrimes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundNine() {
        #expect(calculatePrimes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTen() {
        #expect(calculatePrimes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundEleven() {
        #expect(calculatePrimes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTwelve() {
        #expect(calculatePrimes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundThirteen() {
        #expect(calculatePrimes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundOneHundred() {
        #expect(calculatePrimes(upTo: 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
    }

    @Test func primesUpTo_performance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = calculatePrimes(upTo: 10_000)
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime

        #expect(executionTime < 0.04)
    }

    // MARK: - Helpers

    private func calculatePrimes(upTo upperBound: Int) -> [Int] {
        PrimeCalculator7.primes(upTo: upperBound)
    }
}
