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
        guard upperBound != 2 else { return [2] }
        guard upperBound > 1 else { return [] }

        return [2] + (3...upperBound).filter { number in
            number % 2 != 0
        }
    }
}

struct PrimeCalculatorTests {
    @Test func primesUpToOne_returnsEmpty() {
        #expect(PrimeCalculator.primes(upTo: 1) == [])
    }

    @Test func primesUpToNegativeValue_returnsEmpty() {
        #expect(PrimeCalculator.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator.primes(upTo: 0) == [])
    }

    @Test func primesUpToTwo_returnsTwo() {
        #expect(PrimeCalculator.primes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsTwoAndThree() {
        #expect(PrimeCalculator.primes(upTo: 3) == [2, 3])
    }
}
