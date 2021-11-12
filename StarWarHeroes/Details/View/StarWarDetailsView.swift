//
//  StarWarDetailsView.swift
//  StarWarHeroes
//
//  Created by Abanoub Nabil on 11/12/21.
//

import SwiftUI

struct StarWarDetailsView: View {
    var details: StarDetails
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            GeometryReader { geo in
                StarWarImage(urlString: details.image)
                    .frame(width: geo.size.width , height: geo.size.height)
                Text(details.name).frame(width: geo.size.width, height: 70, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black.opacity(0.3)))
                    .offset(y: geo.size.height - 70).font(.title)
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("birth Year: \(details.birth_year)").bold()
                Text("Gender: \(details.gender)").bold()
                Text("Height: \(details.height)").bold()
                Text("mass: \(details.mass)").bold()
                Text("Eye Color: \(details.eye_color)").bold()
                Text("Hair Color: \(details.hair_color)").bold()
                Text("Skin Color: \(details.skin_color)").bold()
            }
            
        }.lineSpacing(16)
    }
}

struct StarWarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StarWarDetailsView(details: heros.results[0])
    }
}
