//
//  Person.swift
//  IOSEnvironmentObjSample
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import Foundation

struct Person : Identifiable, Hashable {
    var id = UUID()
    var name : String
    var address : String
    var company : String
    var yeasOfExperience : Int
}
