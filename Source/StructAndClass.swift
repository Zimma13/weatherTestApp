//
//  StructAndClass.swift
//  WeatherTest
//
//  Created by Zimma on 21.06.2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import Foundation

//Weather
struct Weather: Decodable {
    let latitude: Float
    let longitude: Float
    let currently: Currently
    let daily: Daily
}

struct Currently: Decodable {
    let temperature: Double
    let summary: String
    let icon: String
}

struct Daily: Decodable {
    let summary: String
    let data: [Data]
}

struct Data: Decodable {
    let time: Double
    let temperatureLow: Double
    let temperatureHigh: Double
    let summary: String
    let icon: String
    
    var tempLowHigh: String {
        get {
            return "\(Int(temperatureLow))\u{00B0}  - \(Int(temperatureHigh))\u{00B0}"
        }
    }
}

struct AddCity: Decodable {
    var results: [Results]
    
    struct Results: Decodable {
        var address_components: [AddressComponent]
        struct AddressComponent: Decodable {
            var long_name: String?
        }
        var geometry: Geometry
        struct Geometry: Decodable {
            var location: Location
            struct Location: Decodable {
                var lat: Float?
                var lng: Float?
            }
        }
    }
}
