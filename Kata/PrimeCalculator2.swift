//
//  PrimeCalculator2.swift
//  Kata
//
//  Created by LennartWisbar on 19.08.25.
//

public enum PrimeCalculator2 {
    public static func calculatePrimes(upTo upperBound: Int) -> [Int] {
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
        let root = Int(sqrt(Double(self)))

        for prime in allLowerPrimes {
            guard prime <= root else { return true }

            if self % prime == 0 {
                return false
            }
        }
        return true
    }
}
