//
//  PrimeCalculator2Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 19.08.25.
//

import Testing

enum PrimeCalculator2 {
    static func calculatePrimes(upTo upperBound: Int) -> [Int] {
        []
    }
}

struct PrimeCalculator2Tests {
    @Test func calculatePrimes_withNegativeUpperBound_returnsEmpty() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: -1) == [])
    }

    @Test func calculatePrimes_withUpperBoundZero_returnsEmpty() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 0) == [])
    }

    @Test func calculatePrimes_withUpperBoundOne_returnsEmpty() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 1) == [])
    }
}
