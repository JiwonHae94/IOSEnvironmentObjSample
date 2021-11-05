//
//  SampleViewModel.swift
//  IOSEnvironmentObjSample
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import Foundation


class SampleViewModel : ObservableObject{
    
    @Published var showName : Bool = false
    @Published  var showAddress : Bool = false
    @Published  var showCompany : Bool = false
    @Published var showYearOfExp : Bool = false
    @Published var people = [Person]()
    
    init(){
        for i in 0...4{
            self.people.append(
                Person(name: "Mamma Mia", address: "123 Candy Lane", company: "CodeWithChris", yeasOfExperience: 99)
            )
        }
    }
}
