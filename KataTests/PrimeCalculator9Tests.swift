//
//  PrimeCalculator9Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 10.09.25.
//

import Testing

enum PrimeCalculator9 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator9Tests {
    @Test func upperBoundSmallerThan2_returnsEmpty() {
        #expect(PrimeCalculator9.primes(upTo: -1) == [])
        #expect(PrimeCalculator9.primes(upTo: 0) == [])
        #expect(PrimeCalculator9.primes(upTo: 1) == [])
    }
}
