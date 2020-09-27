//
//  ListElementView.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import SwiftUI

/// It will work as UITable Cell
struct ListElementView: View
{
    var record:ListModel?
    
    var body: some View {
        HStack(){
            Image(record?.icon ?? ImageConstant.noImage)
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .aspectRatio(contentMode: .fit)
            Text(record?.text ?? "No text availabel.")
                .foregroundColor(.blue)
        }
    }
}

#if DEBUG
struct ListElementView_Previews: PreviewProvider {
    static var previews: some View {
        ListElementView()
    }
}
#endif
