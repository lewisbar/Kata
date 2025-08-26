//
//  PrimeCalculator6Tests.swift
//  KataTests
//
//  Created by LennartWisbar on 26.08.25.
//

import Testing

enum PrimeCalculator6 {
    static func primes(upTo upperBound: Int) -> [Int] {
        if upperBound < 2 { return [] }

        let candidates = 2...upperBound
        var collectedPrimes = [Int]()

        for candidate in candidates {
            var isPotentialPrime = true
            for collectedPrime in collectedPrimes {
                if candidate.isMultiple(of: collectedPrime) {
                    isPotentialPrime = false
                    break
                }
            }
            if isPotentialPrime {
                collectedPrimes.append(candidate)
            }
        }

        return collectedPrimes
    }
}

struct PrimeCalculator6Tests {
    @Test func primesUpToNegativeNumber_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: -1) == [])
    }

    @Test func primesUpToZero_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: 0) == [])
    }

    @Test func primesUpToOne_returnsEmpty() {
        #expect(PrimeCalculator6.primes(upTo: 1) == [])
    }

    @Test func primesUpToTwo_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 2) == [2])
    }

    @Test func primesUpToThree_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 3) == [2, 3])
    }

    @Test func primesUpToFour_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpToSeven_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsCorrectResult() {
        #expect(PrimeCalculator6.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
