//
//  AppBrain.swift
//  DogYears
//
//  Created by C. Jordan Ball III on 5/11/21.
//

import Foundation

struct AppBrain {
    var dogAge: Int = 0;
    
    mutating func setDogAge(_ inputAge: Int) -> Void {
        dogAge = inputAge * 7;
    }
    
    func getDogAge() -> Int {
        return dogAge;
    }
}
