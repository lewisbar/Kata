//
//  PrimeCalculator8Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 08.09.25.
//

import Testing

enum PrimeCalculator8 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator8Tests {
    @Test func negativeUpperBound_returnsEmpty() {
        #expect(PrimeCalculator8.primes(upTo: -1) == [])
    }

    @Test func upperBoundZero_returnsEmpty() {
        #expect(PrimeCalculator8.primes(upTo: 0) == [])
    }
}
