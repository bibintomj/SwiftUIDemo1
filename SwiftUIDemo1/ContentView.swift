//
//  ContentView.swift
//  SwiftUIDemo1
//
//  Created by Bibin Joseph on 19/04/21.
//

import SwiftUI

enum Country: String, Identifiable, CaseIterable {
    var id: Country { self }
    
    case india, usa, uk, australia, canada, mexico
}

struct ContentView: View {
    @State private var tapCount = 0
    @State private var textFieldIsVisible = false
    @State private var emailString = ""
    
    private let countries: [Country] = Country.allCases
    @State private var selectedCountry = Country.australia
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    ForEach (0..<5) {
                        Text("Hello, world! \($0)").font(.title)
//                        Text("Hello, world!")
//                        Text("Hello, world!")
//                        Text("Hello, world!")
//                        Text("Hello, world!")
                    }
                    Text("\(selectedCountry.rawValue)")
                }
                Button("Tap Count \(tapCount)") {
                    tapCount += 1
                }
                Button("Toggle Visibility") {
                    withAnimation {
                        textFieldIsVisible.toggle()
                    }
                    
                }
                
                if textFieldIsVisible {
                    TextField("email@example.com", text: $emailString)
//                        .transition(.scale)
                }
                
                Picker("Select country", selection: $selectedCountry) {
                    ForEach (Country.allCases) {
                        Text("\($0.rawValue)")
                    }
                }
            }

            .navigationTitle(Text("Swift UI"))
            .navigationBarTitleDisplayMode(.automatic)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
            .previewDisplayName("12 mini")
    }
}
