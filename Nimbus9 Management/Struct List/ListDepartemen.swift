//
//  ListDepartemen.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import Foundation
import UIKit

struct ListDepartemen{
    let namaDepartemen: String
    let image: UIImage
}

let departmentList: [ListDepartemen] =
[
    ListDepartemen(namaDepartemen: "SECURITY", image: UIImage(named: "Security_Circle")!),
    ListDepartemen(namaDepartemen: "CLEANING", image: UIImage(named: "Cleaning_Circle")!),
    ListDepartemen(namaDepartemen: "ENGINEER", image: UIImage(named: "Engineer_Circle")!),
    ListDepartemen(namaDepartemen: "PEST CONTROL", image: UIImage(named: "Pest_Circle")!),
    ListDepartemen(namaDepartemen: "HSE", image: UIImage(named: "HSE_Circle")!)
]
