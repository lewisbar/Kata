//
//  PrimeCalculator9Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 10.09.25.
//

import Testing

enum PrimeCalculator9 {
    static func primes(upTo upperBound: Int) -> [Int] {
        upperBound < 2 ? [] : Array(2...upperBound)
    }
}

struct PrimeCalculator9Tests {
    @Test func upperBoundSmallerThan2_returnsEmpty() {
        #expect(calculatePrimes(upTo: -1) == [])
        #expect(calculatePrimes(upTo: 0) == [])
        #expect(calculatePrimes(upTo: 1) == [])
    }

    @Test func upperBound2_returns2() {
        #expect(calculatePrimes(upTo: 2) == [2])
    }

    @Test func upperBound3_returnsCorrectNumbers() {
        #expect(calculatePrimes(upTo: 3) == [2, 3])
    }

    // MARK: - Helpers
    
    private func calculatePrimes(upTo upperBound: Int) -> [Int] {
        PrimeCalculator9.primes(upTo: upperBound)
    }
}
