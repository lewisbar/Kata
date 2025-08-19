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

        var knownPrimes = [2]
        let candidates = 3...upperBound

        for candidate in candidates {
            let isPrime = candidate.isPrime(allLowerPrimes: knownPrimes)

            if isPrime {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }
}

private extension Int {
    func isPrime(allLowerPrimes: [Int]) -> Bool {
        for prime in allLowerPrimes {
            if self % prime == 0 {
                return false
            }
        }
        return true
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

    @Test func calculatePrimes_withUpperBoundSix_returnsTwoThreeFive() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 6) == [2, 3, 5])
    }

    @Test func calculatePrimes_withUpperBoundSeven_returnsTwoThreeFiveSeven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 7) == [2, 3, 5, 7])
    }

    @Test func calculatePrimes_withUpperBoundEight_returnsTwoThreeFiveSeven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 8) == [2, 3, 5, 7])
    }

    @Test func calculatePrimes_withUpperBoundNine_returnsTwoThreeSeven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 9) == [2, 3, 5, 7])
    }

    @Test func calculatePrimes_withUpperBoundTen_returnsTwoThreeSeven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 10) == [2, 3, 5, 7])
    }

    @Test func calculatePrimes_withUpperBoundEleven_returnsTwoThreeSevenEleven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 11) == [2, 3, 5, 7, 11])
    }

    @Test func calculatePrimes_withUpperBoundTwelve_returnsTwoThreeSevenEleven() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 12) == [2, 3, 5, 7, 11])
    }

    @Test func calculatePrimes_withUpperBoundThirteen_returnsTwoThreeSevenElevenThirteen() {
        #expect(PrimeCalculator2.calculatePrimes(upTo: 13) == [2, 3, 5, 7, 11, 13])
    }
}
