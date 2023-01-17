//
//  Country.swift
//  TP2_Groupe2_3
//
//  Created by user222446 on 1/15/23.
//

import Foundation
struct Country {
    var isoCode: String
    var name: String
    var continent: String
    
}

let countries = [
    Country(isoCode: "at", name: "Austria",continent: "Europe"),
    Country(isoCode: "be", name: "Belgium",continent: "Europe"),
    Country(isoCode: "de", name: "Germany",continent: "Europe"),
    Country(isoCode: "el" ,name: "Greece" ,continent: "Europe"),
    Country(isoCode: "fr", name: "France" ,continent: "Europe"),
    Country(isoCode: "ma", name: "Maroc",continent: "North Africa"),
    Country(isoCode: "ca", name: "Canada",continent: "North America"),
]


func calcNumberOfcontinent(_ _countries: [Country]) -> [String: Int]  {
    var res:[String: Int] = [:]
    for val in _countries{
        if !res.keys.contains(val.continent){
            res[val.continent] = 1
        }else {
            res[val.continent]! += 1
        }
    }
    
    return res
}

let continents = calcNumberOfcontinent(countries)
    
let groupByContinent = Dictionary(grouping: countries) {
    (country) -> String in return country.continent
}

