//
//  PrimeCalculator8Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 08.09.25.
//

import Testing

enum PrimeCalculator8 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound >= 2 { return [2] + Array(2...upperBound).filter { $0 % 2 != 0 } }
        return []
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
}
