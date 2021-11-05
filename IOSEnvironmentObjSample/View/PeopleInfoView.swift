//
//  ContentView.swift
//  IOSEnvironmentObjSample
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import SwiftUI

struct PeopleInfoView: View {
    
    @EnvironmentObject var model : SampleViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(model.people, id: \.self){ person in 
                
                if model.showName {
                    Text("Name : \(person.name)")
                }
                
                if model.showCompany{
                    Text("Company : \(person.company)")
                }
                
                if model.showAddress{
                    Text("Address : \(person.address)")
                }
                
                if model.showYearOfExp{
                    Text("Years of Experience : \(person.yeasOfExperience)")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        PeopleInfoView(person: Person(name: "Mamma Mia", address: "123 Candy Lane", company: "CodeWithChris", yeasOfExperience: 99)).environmentObject(SampleViewModel())
        PeopleInfoView()
    }
}
