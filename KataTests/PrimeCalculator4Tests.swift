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
            if isNextPrime(candidate, afterKnownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }
        return knownPrimes
    }

    private static func isNextPrime(_ candidate: Int, afterKnownPrimes knownPrimes: [Int]) -> Bool {
        for knownPrime in knownPrimes {
            if candidate % knownPrime == 0 {
                return false
            }
        }
        return true
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

    @Test func primesUpTo4_returns2and3() {
        #expect(PrimesCalculator4.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpTo5_returns2and3and5() {
        #expect(PrimesCalculator4.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpTo6_returns2and3and5() {
        #expect(PrimesCalculator4.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpTo7_returns2and3and5and7() {
        #expect(PrimesCalculator4.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpTo8_returns2and3and5and7() {
        #expect(PrimesCalculator4.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpTo9_returns2and3and5and7() {
        #expect(PrimesCalculator4.primes(upTo: 9) == [2, 3, 5, 7])
    }
}
