//
//  PrimeCalculator2Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 19.08.25.
//

import Testing

enum PrimeCalculator2 {
    static func calculatePrimes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }
        if upperBound == 2 { return [2] }

        var primes = [2]
        for candidate in 3...upperBound {
            if candidate % 2 != 0 {
                primes.append(candidate)
            }
        }

        return primes
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

    @Test func calculatePrimes_withUpperBoundTwo_returnsTwo() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 2) == [2])
    }

    @Test func calculatePrimes_withUpperBoundThree_returnsTwoThree() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 3) == [2, 3])
    }

    @Test func calculatePrimes_withUpperBoundFour_returnsTwoThree() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 4) == [2, 3])
    }

    @Test func calculatePrimes_withUpperBoundFive_returnsTwoThreeFive() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 5) == [2, 3, 5])
    }
}
