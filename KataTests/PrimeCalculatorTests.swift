//
//  PrimeCalculatorTests.swift
//  KataTests
//
//  Created by LennartWisbar on 18.08.25.
//

import Testing
import Kata

enum PrimeCalculator {
    static func primes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculatorTests {
    @Test func primesUpTo1_returnsEmpty() {
        #expect(PrimeCalculator.primes(upTo: 1) == [])
    }

    @Test func primesUpToNegativeValue_returnsEmpty() {
        #expect(PrimeCalculator.primes(upTo: -1) == [])
    }
}
