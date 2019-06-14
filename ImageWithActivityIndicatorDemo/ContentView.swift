//
//  ContentView.swift
//  ImageWithActivityIndicator
//
//  Created by Ali Adam on 6/12/19.
//  Copyright © 2019 AliAdam. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let urls = (300..<425).map { "https://picsum.photos/\($0)" }
    
    var body: some View {
        
        List(urls.identified(by: \.self)) { url in
            
            HStack {
                CellView(url: url)
            }
        }
    }
}




#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
