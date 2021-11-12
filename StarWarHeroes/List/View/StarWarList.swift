//
//  StarWarList.swift
//  StarWarHeroes
//
//  Created by Abanoub Nabil on 11/12/21.
//

import SwiftUI

struct StarWarList: View {
    var body: some View {
        NavigationView{
            List(heros.results, id: \.name) { hero in
                NavigationLink(
                    destination: StarWarDetailsView(details: hero),
                    label: {
                        StarWarCell(hero: hero)
                    })
            }
            .navigationTitle("STAR WAR CATS")
            .lineSpacing(100)
        }
    }
}

struct StarWarList_Previews: PreviewProvider {
    static var previews: some View {
        StarWarList()
    }
}
