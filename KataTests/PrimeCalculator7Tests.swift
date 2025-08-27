//
//  PrimeCalculator7Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 27.08.25.
//

import Testing

enum PrimeCalculator7 {
    static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound >= 2 else { return [] }

        var collectedPrimes = [Int]()
        let candidates = 2...upperBound

        for candidate in candidates {
            if candidate.isPrime(afterPrimes: collectedPrimes) {
                collectedPrimes.append(candidate)
            }
        }

        return collectedPrimes
    }
}

private extension Int {
    func isPrime(afterPrimes primes: [Int]) -> Bool {
        for prime in primes {
            if self.isMultiple(of: prime) {
                return false
            }
        }
        return true
    }
}

struct PrimeCalculator7Tests {
    @Test func primesUpTo_returnsEmptyForNegativeUpperBound() {
        #expect(PrimeCalculator7.primes(upTo: -1) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundZero() {
        #expect(PrimeCalculator7.primes(upTo: 0) == [])
    }

    @Test func primesUpTo_returnsEmptyForUpperBoundOne() {
        #expect(PrimeCalculator7.primes(upTo: 1) == [])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTwo() {
        #expect(PrimeCalculator7.primes(upTo: 2) == [2])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundThree() {
        #expect(PrimeCalculator7.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundFour() {
        #expect(PrimeCalculator7.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundFive() {
        #expect(PrimeCalculator7.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundSix() {
        #expect(PrimeCalculator7.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundSeven() {
        #expect(PrimeCalculator7.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundEight() {
        #expect(PrimeCalculator7.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundNine() {
        #expect(PrimeCalculator7.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTen() {
        #expect(PrimeCalculator7.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundEleven() {
        #expect(PrimeCalculator7.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundTwelve() {
        #expect(PrimeCalculator7.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpTo_returnsCorrectResultForUpperBoundThirteen() {
        #expect(PrimeCalculator7.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
