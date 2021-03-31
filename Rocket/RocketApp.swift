//
//  HealthApp.swift
//  Health
//
//  Created by Jordan Singer on 7/14/20.
//

import SwiftUI

@main
struct Rocket: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State var selection: Set<Int> = [0]
    
    var body: some View {
        NavigationView {
            List(selection: self.$selection) {
                Label("Activity", systemImage: "flame.fill").accentColor(.red).tag(0)
                    
                
                Label("Body", systemImage: "figure.walk").accentColor(.purple).tag(1)

                Divider()
                Label("Highlights", systemImage: "sparkles").tag(2)

            }
            .listStyle(SidebarListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
