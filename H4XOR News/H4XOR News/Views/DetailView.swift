//
//  DetailView.swift
//  H4XOR News
//
//  Created by Vadym Horovyi on 18/06/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
