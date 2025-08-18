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
        guard upperBound > 1 else { return [] }
        guard upperBound != 2 else { return [2] }

        var knownPrimes = [2]

        for candidate in (3...upperBound) {
            if isPrime(candidate, knownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }

    private static func isPrime(_ candidate: Int, knownPrimes: [Int]) -> Bool {
        for knownPrime in knownPrimes {
            if candidate % knownPrime == 0 {
                return false
            }
        }
        return true
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

    @Test func primesUpToFour_returnsTwoAndThree() {
        #expect(PrimeCalculator.primes(upTo: 4) == [2, 3])
    }

    @Test func primesUpToFive_returnsTwoThreeAndFive() {
        #expect(PrimeCalculator.primes(upTo: 5) == [2, 3, 5])
    }

    @Test func primesUpToSix_returnsTwoThreeAndFive() {
        #expect(PrimeCalculator.primes(upTo: 6) == [2, 3, 5])
    }

    @Test func primesUpToSeven_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator.primes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func primesUpToEight_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator.primes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func primesUpToNine_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator.primes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func primesUpToTen_returnsTwoThreeFiveAndSeven() {
        #expect(PrimeCalculator.primes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func primesUpToEleven_returnsTwoThreeFiveSevenAndEleven() {
        #expect(PrimeCalculator.primes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToTwelve_returnsTwoThreeFiveSevenAndEleven() {
        #expect(PrimeCalculator.primes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func primesUpToThirteen_returnsTwoThreeFiveSevenElevenAndThirteen() {
        #expect(PrimeCalculator.primes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
