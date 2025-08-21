//
//  PrimeCalculator4Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 21.08.25.
//

import Testing

enum PrimesCalculator4 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator4Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimesCalculator4.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimesCalculator4.primes(upTo: 0) == [])
    }

    @Test func primesUpTo1_returnsEmpty() {
        #expect(PrimesCalculator4.primes(upTo: 1) == [])
    }
}
