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

        let candidates = 3...upperBound
        var primes = [2]

        for candidate in candidates {
            if candidate.isNextPrime(after: primes) {
                primes.append(candidate)
            }
        }

        return primes
    }
}

private extension Int {
    func isNextPrime(after allLowerPrimes: [Int]) -> Bool {
        for lowerPrime in allLowerPrimes {
            if self % lowerPrime == 0 {
                return false
            }
        }
        return true
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

    @Test func primesUpToSeven_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsCorrectNumbers() {
        #expect(PrimeCalculator3.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
