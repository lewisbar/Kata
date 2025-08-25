//
//  PrimeCalculator5Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 25.08.25.
//

import Testing

enum PrimeCalculator5 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }

        return Array(2...upperBound).filter { $0 == 2 || $0 % 2 != 0 }
    }
}

struct PrimeCalculator5Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator5.primes(upTo: -1) == [])
    }

    @Test func primesUpTo0_returnsEmpty() {
        #expect(PrimeCalculator5.primes(upTo: 0) == [])
    }

    @Test func primesUpTo1_returnsEmpty() {
        #expect(PrimeCalculator5.primes(upTo: 1) == [])
    }

    @Test func primesUpTo2_returns2() {
        #expect(PrimeCalculator5.primes(upTo: 2) == [2])
    }

    @Test func primesUpTo3_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpTo4_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpTo5_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 5) == [2, 3, 5])
    }
}
