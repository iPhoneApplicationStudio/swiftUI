//
//  ContentView.swift
//  SwiftForm
//
//  Created by Kumar on 27/09/20.
//  Copyright © 2020 Kumar. All rights reserved.
//
/*
 
 var message = "You did not entered emil 😭"
 if !self.email.isEmpty{
     message = "Your entered email is \(self.email)"
 }
  Alert(title: Text("Bingo!!"), message: Text(message), dismissButton: Alert.Button.cancel())
 */

import SwiftUI

struct ContentView: View
{
    //MARK:- Properties
    @State private var isToggleOn = false
    @State private var stepperValue = 1
    @State private var pickerValue = 1
    @State private var date = Date()
    @State private var email = ""
    @State private var submit = false
    
    //MARK:- Other
    var body: some View {
        NavigationView {
            Form{
                Toggle(isOn: $isToggleOn) {
                    Text("Allow Notification")
                }
                Stepper(value: $stepperValue, in: 1...10) {
                    Text("Total notification\(stepperValue == 1 ? "" : "s") to read is \(stepperValue)")
                        .foregroundColor(.blue)
                }
                Picker(selection:$pickerValue, label: Text("Favrouite Subject").foregroundColor(.orange)) {
                    Text("Swift").tag(1)
                        .foregroundColor(.red)
                    Text("SwiftUI").tag(2)
                        .foregroundColor(.yellow)
                    Text("ObjectiveC").tag(3)
                        .foregroundColor(.green)
                }
                DatePicker(selection: $date, label: { Text("Date").foregroundColor(.gray) })
                Section(header: Text("Email"))
                {
                    TextField("Enter your email", text: $email)
                    Button(action: {self.submit.toggle()}) {
                        Text("Submit")
                    }
                    .alert(isPresented: $submit) { () -> Alert in
                        var message = "You did not enter emil 😭"
                        if !self.email.isEmpty{
                            message = "Your entered email is \(self.email)"
                        }
                         return Alert(title: Text("Bingo!!"), message: Text(message), dismissButton: Alert.Button.cancel())
                    }
                }
                
            }
            .navigationBarTitle(Text("Form Practice"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
