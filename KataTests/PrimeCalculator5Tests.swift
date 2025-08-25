//
//  PrimeCalculator5Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 25.08.25.
//

import Testing

enum PrimeCalculator5 {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator5Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator5.primes(upTo: -1) == [])
    }
}
