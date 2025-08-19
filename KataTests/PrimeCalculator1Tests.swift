//
//  PrimeCalculator1Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 18.08.25.
//

import Testing
import Kata

struct PrimeCalculator1Tests {
    @Test func primesUpToOne_returnsEmpty() {
        #expect(PrimeCalculator1.primes(upTo: 1) == [])
    }

    @Test func primesUpToNegativeValue_returnsEmpty() {
        #expect(PrimeCalculator1.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator1.primes(upTo: 0) == [])
    }

    @Test func primesUpToTwo_returnsTwo() {
        #expect(PrimeCalculator1.primes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsTwoAndThree() {
        #expect(PrimeCalculator1.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpToFour_returnsTwoAndThree() {
        #expect(PrimeCalculator1.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsTwoThreeAndFive() {
        #expect(PrimeCalculator1.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsTwoThreeAndFive() {
        #expect(PrimeCalculator1.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpToSeven_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator1.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator1.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator1.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator1.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsTwoThreeFiveSevenAndEleven() {
        #expect(PrimeCalculator1.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsTwoThreeFiveSevenAndEleven() {
        #expect(PrimeCalculator1.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsTwoThreeFiveSevenElevenAndThirteen() {
        #expect(PrimeCalculator1.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func primesUpTo_measurePerformance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = PrimeCalculator1.primes(upTo: 10_000)
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime
        #expect(executionTime < 0.01)
    }
}
