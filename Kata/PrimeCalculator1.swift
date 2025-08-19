//
//  PrimeCalculator1.swift
//  Kata
//
//  Created by LennartWisbar on 18.08.25.
//

public enum PrimeCalculator1 {
    public static func primes(upTo upperBound: Int) -> [Int] {
        guard upperBound > 1 else { return [] }
        guard upperBound != 2 else { return [2] }

        var knownPrimes = [2]
        let candidates = (3...upperBound)

        for candidate in candidates {
            if isPrime(candidate, knownPrimes: knownPrimes) {
                knownPrimes.append(candidate)
            }
        }

        return knownPrimes
    }

    // MARK: - Helpers

    private static func isPrime(_ candidate: Int, knownPrimes: [Int]) -> Bool {
        let root = Int(sqrt(Double(candidate)))

        for knownPrime in knownPrimes {
            guard knownPrime <= root else {
                return true
            }

            if candidate % knownPrime == 0 {
                return false
            }
        }

        return true
    }
}
