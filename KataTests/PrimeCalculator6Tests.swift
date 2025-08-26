//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing

enum PrimeCalculator6 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound != 2 { return [] }
        return [2]
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
}
