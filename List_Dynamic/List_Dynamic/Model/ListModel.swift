//
//  ListModel.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import SwiftUI

struct ListModel:Identifiable {
    let id = UUID()
    let icon:String?
    let text:String?
    
    init?(icon:String?, text:String?){
        guard let icon = icon, let text = text else{ return nil }
        self.icon = icon
        self.text = text
    }
}
