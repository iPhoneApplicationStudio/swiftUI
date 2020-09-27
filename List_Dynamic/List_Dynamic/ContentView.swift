//
//  ContentView.swift
//  List_Dynamic
//
//  Created by Kumar on 26/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(Service().getItems()) { item in
                NavigationLink(destination: ContentView()){
                   ListElementView(record: item)
                }
            }.onAppear(){
                 UITableView.appearance().tableFooterView = UIView()
            }
            .navigationBarItems(leading: Text("Edit").foregroundColor(.red), trailing: Text("Done").foregroundColor(.blue))
            .navigationBarTitle("Dynamic List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
