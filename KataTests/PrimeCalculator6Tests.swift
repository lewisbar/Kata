//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing

enum PrimeCalculator6 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator6Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: 0) == [])
    }
}
