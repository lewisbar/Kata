//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing

enum PrimeCalculator6 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }
        return Array(2...upperBound).filter { $0 == 2 || !$0.isMultiple(of: 2)}
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
}
