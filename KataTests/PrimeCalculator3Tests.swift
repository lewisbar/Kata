//
//  PrimeCalculator3Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 20.08.25.
//

import Testing

enum PrimeCalculator3 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator3Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator3.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator3.primes(upTo: 0) == [])
    }

    @Test func primesUpToOne_returnsEmpty() {
        #expect(PrimeCalculator3.primes(upTo: 1) == [])
    }
}
