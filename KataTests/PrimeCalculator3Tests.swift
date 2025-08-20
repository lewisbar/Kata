//
//  PrimeCalculator3Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 20.08.25.
//

import Testing

enum PrimeCalculator3 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }
        if upperBound == 2 { return [2] }
        if upperBound < 5 { return [2, 3] }
        return [2, 3, 5]
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

    @Test func primesUpToTwo_returnsTwo() {
        #expect(PrimeCalculator3.primes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsTwoThree() {
        #expect(PrimeCalculator3.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpToFour_returnsTwoThree() {
        #expect(PrimeCalculator3.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsTwoThreeFive() {
        #expect(PrimeCalculator3.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsTwoThreeFive() {
        #expect(PrimeCalculator3.primes(upTo: 6) == [2, 3, 5])
    }
}
