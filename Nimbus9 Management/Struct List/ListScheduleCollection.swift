//
//  ListScheduleCollection.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 23/05/22.
//

import Foundation

struct ListScheduleCollection{
    let namaDepartemen : String
}

let scheduleList: [ListScheduleCollection] =
[
    ListScheduleCollection(namaDepartemen: "Security"),
    ListScheduleCollection(namaDepartemen: "Cleaning"),
    ListScheduleCollection(namaDepartemen: "Engineering"),
    ListScheduleCollection(namaDepartemen: "Pest Control"),
    ListScheduleCollection(namaDepartemen: "HSE"),
]
