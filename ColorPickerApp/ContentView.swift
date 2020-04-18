//
//  ContentView.swift
//  ColorPickerApp
//
//  Created by Sree Sai Raghava Dandu on 18/04/20.
//  Copyright © 2020 Sree Sai Raghava. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0
    var body: some View {
        VStack{
            Text("Color Picker")
            Spacer()
            Rectangle()
                .frame(width:100,height: 100)
                .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
                .border(Color.black,width: 1)
            Spacer()
            //Adding SliderViews
        SliderView(value: $red, label: "Red")
        SliderView(value: $green, label:"Green")
            SliderView(value:$blue,label: "Blue")
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
