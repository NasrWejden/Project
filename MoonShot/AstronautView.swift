//
//  AstronautView.swift
//  MoonShot
//
//  Created by Wejden Nasr on 21/2/2023.
//

import SwiftUI

struct AstronautView: View {
    
    let astroaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astroaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astroaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astroaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronaut: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astroaut: astronaut["armstrong"]!)
    }
}
