//
//  SwiftUIView.swift
//  
//
//  Created by Edon Valdman on 3/2/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color.secondary)
            
            Rectangle()
                .fill(Color.secondaryLabel)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
