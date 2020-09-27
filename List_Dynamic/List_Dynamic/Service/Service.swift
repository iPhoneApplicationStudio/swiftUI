//
//  Service.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import Foundation


class Service
{
    func getItems() -> [ListModel]
    {
        var records = [ListModel]()
        if let firstRecord = ListModel(icon: "home", text: "Home page is looking cool.") {
            records.append(firstRecord)
//            records.append(firstRecord)
//            records.append(firstRecord)
//            records.append(firstRecord)
        }
        if let secondRecord = ListModel(icon: "fourSquare", text: "Four square is a game."){
            records.append(secondRecord)
//            records.append(secondRecord)
//            records.append(secondRecord)
//            records.append(secondRecord)
        }
        if let thirdRecord = ListModel(icon: "noImage", text: "No Image is not bad."){
            records.append(thirdRecord)
//            records.append(thirdRecord)
//            records.append(thirdRecord)
//            records.append(thirdRecord)
        }
        return records
    }
}
