//
//  Resort.swift
//  SnowSeeker
//
//  Created by KazukiNakano on 2020/08/16.
//  Copyright © 2020 dmb. All rights reserved.
//

import Foundation

struct Resort: Codable, Identifiable {
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
    
    static let example = (Bundle.main.decode("resorts.json") as [Resort])[0]
    
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
}
