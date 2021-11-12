//
//  StarWarCell.swift
//  StarWarHeroes
//
//  Created by Abanoub Nabil on 11/12/21.
//

import SwiftUI

struct StarWarCell: View {
    var hero: StarDetails
    
    var body: some View {
        HStack {
            StarWarImage(urlString: hero.image).frame(width: 100, height: 100, alignment: .leading).clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .shadow(radius: 3)
            Text(hero.name).font(.title).bold()
        }
        
    }
}

struct StarWarCell_Previews: PreviewProvider {
    static var previews: some View {
        StarWarCell(hero: heros.results[0])
    }
}
