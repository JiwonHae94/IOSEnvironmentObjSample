//
//  PreferenceView.swift
//  IOSEnvironmentObjSample
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import SwiftUI

struct PreferenceView: View {
    @EnvironmentObject var model : SampleViewModel
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Display Preferences")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Toggle("Show name:", isOn: $model.showName)
            Toggle("Show address:", isOn: $model.showAddress)
            Toggle("Show company:", isOn: $model.showCompany)
            Toggle("Show years of experience:", isOn: $model.showYearOfExp)
        }.padding(.horizontal)
            
    }
}

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView()
    }
}
