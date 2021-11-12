//
//  StarWarImage.swift
//  StarWarHeroes
//
//  Created by Abanoub Nabil on 11/12/21.
//

import SwiftUI

struct StarWarImage: View {
    
    var urlString: String
    
    @StateObject var imageLoader = ImageLoader()
    @State var image = UIImage(named: "cat-placeholder")!
    
    var body: some View {
        Image(uiImage: image).resizable().onChange(of: imageLoader.data, perform: { data in
            guard let data = data else { return }
            self.image = UIImage(data: data) ?? UIImage()
        }).onAppear(perform: {
            imageLoader.loadData(from: urlString)
        })
    }
    
}

struct StarWarImage_Previews: PreviewProvider {
    static var previews: some View {
        StarWarImage(urlString: "")
    }
}
