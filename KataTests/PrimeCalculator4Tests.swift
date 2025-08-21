//
//  PrimeCalculator4Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 21.08.25.
//

import Testing

enum PrimesCalculator4 {
    static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }
        guard upperBound > 2 else { return [2] }

        var knownPrimes = [2]

        for candidate in 3...upperBound {
            if candidate % 2 != 0 {
                knownPrimes.append(candidate)
            }
        }
        return knownPrimes
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

    @Test func primesUpTo2_returns2() {
        #expect(PrimesCalculator4.primes(upTo: 2) == [2])
    }

    @Test func primesUpTo3_returns2and3() {
        #expect(PrimesCalculator4.primes(upTo: 3) == [2, 3])
    }
}
