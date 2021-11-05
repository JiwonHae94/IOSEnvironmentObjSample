//
//  TabView.swift
//  IOSEnvironmentObjSample
//
//  Created by Jiwon_Hae on 2021/11/06.
//

import SwiftUI

struct ContentsTabView: View {
    var body: some View {
        TabView{
            PeopleInfoView()
                .tabItem{
                    Image(systemName: "person.2")
                }
            PreferenceView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }.environmentObject(SampleViewModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentsTabView()
    }
}
