//
//  Country.swift
//  product23-03-31
//
//  Created by Hai Chu on 31/03/2023.
//

import Foundation

struct Country {
    var code: String
    var name: String
    var area: Int
    var isMember: Bool
    var population: Int
    var populationDensity: Int {
        return self.population / self.area
    }
    init(code: String, name: String, area: Int, population: Int, isMember: Bool) {
        self.code = code
        self.name = name
        self.area = area
        self.population = population
        self.isMember = isMember
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getCode() -> String {
        return self.code
    }
    
    func getArea() -> Int {
        return self.area
    }
    
    func getPopulation() -> Int {
        return self.population
    }
}

