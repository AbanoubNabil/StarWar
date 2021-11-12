//
//  HerosList.swift
//  SucideSquad
//
//  Created by Abanoub Nabil on 11/12/21.
//

import SwiftUI

struct HerosList: View {
    
    var body: some View {
        NavigationView{
            List(heros.results, id: \.id) { hero in
                NavigationLink(
                    destination: HeroDetailsView(),
                    label: {
                        HeroCell(hero: hero)
                    })
            }
            .navigationTitle("STAR WAR CATS")
        }
    }
}

struct HerosList_Previews: PreviewProvider {
    static var previews: some View {
        HerosList()
    }
}
