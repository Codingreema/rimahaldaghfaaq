//
//  ContentView.swift
//  rimahaldaghfaaq
//
//  Created by Rimah on 24/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var showGreeting = true
    @State private var cup = 6
    @ScaledMetric(relativeTo: .body) var scaledPadding: CGFloat = 10
    var body: some View {
        
        VStack {
            Text("Water tracker 💦")
                .font(Font.custom("SFUIText-Semibold", size: 30))
                .padding(scaledPadding)
            
            Toggle(isOn: $showGreeting) {
                Text("Apple health")
                
                if showGreeting {
                    Text("Good health! 🍎")
                }
            }
            VStack {
                       Stepper("Cups to drink per day  ", onIncrement: {
                           cup += 1
                       }, onDecrement: {
                           cup -= 1
                       })

                Text("Your cups \(cup)")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Button("continue") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                   }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
}


struct Rimah1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
