//
//  ListSeparatorStyle.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import SwiftUI

//ViewModifier return the current body of self
struct ListSeparatorStyle: ViewModifier
{
    let style:UITableViewCell.SeparatorStyle
    
    //Here content is which has passed to body
    func body(content: Content) -> some View {
        content.onAppear(){
            UITableView.appearance().separatorStyle = self.style
        }
    }
}
