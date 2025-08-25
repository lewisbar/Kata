//
//  PrimeCalculator4Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 21.08.25.
//

import Testing
import Kata

struct PrimeCalculator4Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator4.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator4.primes(upTo: 0) == [])
    }

    @Test func primesUpTo1_returnsEmpty() {
        #expect(PrimeCalculator4.primes(upTo: 1) == [])
    }

    @Test func primesUpTo2_returns2() {
        #expect(PrimeCalculator4.primes(upTo: 2) == [2])
    }

    @Test func primesUpTo3_returns2and3() {
        #expect(PrimeCalculator4.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpTo4_returns2and3() {
        #expect(PrimeCalculator4.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpTo5_returns2and3and5() {
        #expect(PrimeCalculator4.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpTo6_returns2and3and5() {
        #expect(PrimeCalculator4.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpTo7_returns2and3and5and7() {
        #expect(PrimeCalculator4.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpTo8_returns2and3and5and7() {
        #expect(PrimeCalculator4.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpTo9_returns2and3and5and7() {
        #expect(PrimeCalculator4.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpTo10_returnsCorrectNumbers() {
        #expect(PrimeCalculator4.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpTo11_returnsCorrectNumbers() {
        #expect(PrimeCalculator4.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo12_returnsCorrectNumbers() {
        #expect(PrimeCalculator4.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo13_returnsCorrectNumbers() {
        #expect(PrimeCalculator4.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }

    @Test func primesUpTo_performance() {
        let startTime = CFAbsoluteTimeGetCurrent()
        let _ = PrimeCalculator4.primes(upTo: 10_000)
        let executionTime = CFAbsoluteTimeGetCurrent() - startTime

        #expect(executionTime < 0.04)
    }
}
