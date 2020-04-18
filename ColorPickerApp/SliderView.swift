//
//  SliderView.swift
//  ColorPickerApp
//
//  Created by Sree Sai Raghava Dandu on 18/04/20.
//  Copyright © 2020 Sree Sai Raghava. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value:Double
    var label:String
    var body: some View {
        VStack{
            Slider(value: $value,in: 0...255,step: 1.0)
            Text("\(label):\(Int(value))")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), label: "Label").padding()
    }
}
