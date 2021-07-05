//
//  ContentView.swift
//  Moonshot
//
//  Created by Nivas Muthu M G on 05/07/21.

//
import SwiftUI

struct ContentView: View {
    let astronauts: [Astronaut] = Bundle.main.decode("Astronauts.json")
    let missions: [Mission] = Bundle.main.decode("Missions.json")
    
    var body: some View {
        Text("\(astronauts.count)")
        Text("\(missions.count)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
