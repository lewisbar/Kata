//
//  PrimeCalculator8Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 08.09.25.
//

import Testing

enum PrimeCalculator8 {
    static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }
        let candidates = 2...upperBound
        return candidates.filter(isPrime)
    }

    private static func isPrime(_ candidate: Int) -> Bool {
        if candidate == 2 || candidate == 3 { return true }
        return !candidate.isMultiple(of: 2) && !candidate.isMultiple(of: 3)
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
}
