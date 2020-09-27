//
//  View+SeperatorStyle.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import SwiftUI

extension View{
    func listSeperatorStyle(style:UITableViewCell.SeparatorStyle) -> some View{
        ModifiedContent(content: self, modifier: ListSeparatorStyle(style: style))
    }
}
