//
//  PrimeCalculator7Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 27.08.25.
//

import Testing

enum PrimeCalculator7 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator7Tests {
    @Test func primesUpTo_returnsEmptyForNegativeUpperBound() {
        #expect(PrimeCalculator7.primes(upTo: -1) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundZero() {
        #expect(PrimeCalculator7.primes(upTo: 0) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundOne() {
        #expect(PrimeCalculator7.primes(upTo: 1) == [])
    }
}
