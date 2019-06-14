//
//  CellView.swift
//  ImageWithActivityIndicator
//
//  Created by Ali Adam on 6/14/19.
//  Copyright © 2019 AliAdam. All rights reserved.
//

import SwiftUI
import ImageWithActivityIndicator

struct CellView : View {
    let url: String
    var body: some View {
        
        HStack {
            
            ImageWithActivityIndicator(imageURL: url,placeHolder: "icon")
                .scaledToFill()
                .frame(width:100.0, height: 100.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
                .padding()
                .shadow(radius: 10.0)
            Text(verbatim: url)
            
            
        }
    }
}

#if DEBUG
struct CellView_Previews : PreviewProvider {
    static var previews: some View {
        CellView(url: "")
    }
}
#endif
