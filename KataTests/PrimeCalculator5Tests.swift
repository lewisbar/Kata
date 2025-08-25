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

        var knownPrimes = [Int]()
        let candidates = 2...upperBound

        for candidate in candidates {
            if candidate.isPrime(afterKnownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }
}

private extension Int {
    func isPrime(afterKnownPrimes knownPrimes: [Int]) -> Bool {
        for knownPrime in knownPrimes {
            if self % knownPrime == 0 {
                return false
            }
        }
        return true
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

    @Test func primesUpTo6_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpTo7_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpTo8_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpTo9_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpTo10_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpTo11_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo12_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo13_returnsCorrectNumbers() {
        #expect(PrimeCalculator5.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
